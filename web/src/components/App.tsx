import React, { useEffect, useState, useCallback } from 'react';
import Garage from './garage';
import Menu from './menu';
import { fetchNui } from '../utils/fetchNui';
import { useNuiEvent } from '../hooks/useNuiEvent';
import { isEnvBrowser } from '../utils/misc';
import BuyGarage from './private/buyprivate';
import VisibilityButtons from './mono';
import PrivateGarages from './private/privates';
enum View {
  None,
  Garage,
  Menu,
  Buy,
  Privates
}

const App: React.FC = () => {
  const [visibleView, setVisibleView] = useState<View>(View.None);

  const setView = useCallback((view: View) => {
    setVisibleView(view);
  }, []);

  const handleShowGarage = () => setView(View.Garage);
  const handleShowMenu = () => setView(View.Menu);
  const handleShowBuy = () => setView(View.Buy);
  const handleShowPrivates = () => setView(View.Privates);

  useNuiEvent<boolean>('setVisibleGarage', (isVisible) => setView(isVisible ? View.Garage : View.None));
  useNuiEvent<boolean>('setVisibleMenu', (isVisible) => setView(isVisible ? View.Menu : View.None));
  useNuiEvent<boolean>('setVisibleBuy', (isVisible) => setView(isVisible ? View.Buy : View.None));
  useNuiEvent<boolean>('setVisiblePrivates', (isVisible) => setView(isVisible ? View.Privates : View.None));


  useEffect(() => {
    const keyHandler = (e: KeyboardEvent) => {
      if (visibleView !== View.None && e.code === 'Escape') {
        if (!isEnvBrowser()) {
          let action = '';
          if (visibleView === View.Garage) action = 'setVisibleGarage';
          else if (visibleView === View.Menu) action = 'setVisibleMenu';
          else if (visibleView === View.Buy) action = 'setVisibleBuy';
          else if (visibleView === View.Privates) action = 'setVisiblePrivates';
          fetchNui(`mGarage:Close`, { name: action });
        } else {
          setView(View.None);
        }
      }
    };

    window.addEventListener('keydown', keyHandler);
    return () => window.removeEventListener('keydown', keyHandler);
  }, [visibleView, setView]);

  return (
    <>
      <VisibilityButtons
        handleShowGarage={handleShowGarage}
        handleShowMenu={handleShowMenu}
        handleShowBuy={handleShowBuy}
        handleShowPrivates={handleShowPrivates}
        garageVisible={visibleView === View.Garage}
        menuVisible={visibleView === View.Menu}
        buyVisible={visibleView === View.Buy}
        privatesVisible={visibleView === View.Privates}
      />
      
      <Menu visible={visibleView === View.Menu} />
      <Garage visible={visibleView === View.Garage} />
      <BuyGarage visible={visibleView === View.Buy} />
      <PrivateGarages visible={visibleView === View.Privates} />

    </>
  );
};

export default App;
