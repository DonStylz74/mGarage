Config = {}

Config.Debug = true

Config.Framework = 'esx'     -- esx/ox/standalone/qbox/qb

Config.DefaultGarages = true -- Config Garages ???

Config.CarkeysItem = true

Config.ClearTimeBlip = 1000 * 120 -- 2 mins

Config.TargetDistance = 3.0

Config.BlipDefault = {
    sprite = 50,
    color = 0,
    size = 0.5,
}

--  👍 🕺
Config.PedAnims = {
    anims = true,
    list = {
        "WORLD_HUMAN_AA_SMOKE",
        "WORLD_HUMAN_AA_COFFEE",
        "WORLD_HUMAN_CLIPBOARD",
        --"WORLD_HUMAN_MUSICIAN",
        --"WORLD_HUMAN_STUPOR",
    }
}

-- ox Target Based job and grade min grade
Config.TargetImpound = {

    ['police'] = {                  -- jobName
        minGrades = 0,              -- Min Grade to use
        impoundName = "Impound Car" -- Impound to send vehicle
    },

}

Config.GaragesDefault = {
    --cars
    {
        name = 'Pillbox Hill',
        garagetype = 'garage',                                                                                                -- 'garage', 'impound'
        debug = false,                                                                                                        -- true/false Zone debug | boolean
        zoneType = 'target',                                                                                                  -- 'target', 'textui', 'radial'
        job = false,                                                                                                          -- string/nil or false  | string / false
        blip = true,                                                                                                          -- showBlip? | boolean
        intocar = false,                                                                                                      -- Player in to car? | boolean
        isShared = true,                                                                                                     -- Take all vehicles from diferent garages.
        carType = { 'automobile', 'bicycle', 'bike', 'quadbike', 'trailer', 'amphibious_quadbike', 'amphibious_automobile' }, -- automobile, bike, boat, heli, plane, submarine, trailer, train | string
        defaultImpound = 'Impound Car',                                                                                       -- Name of impound  | string / false
        priceImpound = 1050,                                                                                                   -- Price of impound | number
        defaultCars = false,                                                                                                  -- Table {model,plate,price?} | boolean
        actioncoords = vec4(214.6645, -807.0635, 29.8006, 338.9730),                                                          -- vector4
        npchash = 'csb_trafficwarden',                                                                                        -- string or false
        thickness = 11.5,
        points = {                                                                                                            -- Poly Zone Coords
            vec3(199.0, -806.0, 31.0),
            vec3(228.0, -723.0, 31.0),
            vec3(275.0, -739.5, 31.0),
            vec3(244.0, -823.5, 31.0),
        },
        -- Spawn Coords
        spawnpos = {
            vec4(220.2780456543, -809.17193603516, 30.056179046631, 249.62936401367),
            vec4(221.07490539551, -806.69848632813, 30.390104293823, 248.47229003906),
            vec4(222.11103820801, -804.14074707031, 30.38419342041, 246.64263916016),
            vec4(223.20907592773, -801.78698730469, 30.369050979614, 247.40501403809),
            vec4(206.27438354492, -801.09350585938, 30.711149215698, 247.7689666748),
            vec4(207.43371582031, -798.52429199219, 30.690946578979, 247.72959899902),
            vec4(208.2936706543, -796.23156738281, 30.672399520874, 248.55288696289),
            vec4(209.48155212402, -793.83129882813, 30.646259307861, 249.14572143555),
            vec4(215.1284942627, -804.10589599609, 30.347541809082, 69.22452545166),
            vec4(216.35070800781, -801.84881591797, 30.325912475586, 68.610794067383),
            vec4(217.4236907959, -799.2294921875, 30.309574127197, 67.479904174805),
            vec4(218.359375, -796.85687255859, 30.297718048096, 67.339340209961),
            vec4(233.58877563477, -805.39239501953, 29.968862533569, 69.095611572266),
            vec4(232.12843322754, -807.85375976563, 29.973529815674, 68.418014526367),
            vec4(231.43034362793, -810.4765625, 30.428318023682, 68.37825012207),
            vec4(233.57824707031, -802.62896728516, 29.863599777222, 68.189254760742),
            vec4(234.70156860352, -800.02459716797, 29.873470306396, 68.29125213623),
            vec4(235.54278564453, -797.55627441406, 29.88897895813, 69.344123840332),
            vec4(236.31518554688, -794.94281005859, 29.903741836548, 67.963485717773),
            vec4(237.40914916992, -792.41351318359, 29.911319732666, 68.881278991699),
            vec4(238.18969726563, -789.88189697266, 29.930038452148, 66.060241699219),
            vec4(239.3119354248, -787.49957275391, 29.951887130737, 67.802024841309),
            vec4(240.03269958496, -784.78436279297, 29.980098724365, 67.778945922852),
            vec4(241.02597045898, -782.35607910156, 29.996019363403, 68.182350158691),
            vec4(241.84399414063, -779.73510742188, 30.019502639771, 67.815040588379),
            vec4(242.87007141113, -777.10046386719, 30.050964355469, 67.78311920166),
            vec4(243.72016906738, -774.62670898438, 30.083549499512, 68.144569396973),
            vec4(244.63201904297, -772.06329345703, 30.10852432251, 67.610328674316),
            vec4(234.26887512207, -771.49774169922, 30.147186279297, 248.63613891602),
            vec4(233.55903625488, -774.04144287109, 30.129341125488, 248.42193603516),
            vec4(232.57524108887, -776.53948974609, 30.114162445068, 249.12590026855),
            vec4(231.83770751953, -779.18731689453, 30.098335266113, 247.48150634766),
            vec4(230.92442321777, -781.71557617188, 30.087579727173, 249.42712402344),
            vec4(230.06272888184, -784.36950683594, 30.084962844849, 249.61614990234),
            vec4(228.40144348145, -786.61334228516, 30.089071273804, 247.1340637207),
            vec4(227.97947692871, -789.30163574219, 30.070621490479, 246.79280090332),
            vec4(227.08239746094, -791.89215087891, 30.059062957764, 248.33157348633),
            vec4(226.25984191895, -794.51055908203, 30.050912857056, 246.8102722168),
            vec4(225.21650695801, -796.94317626953, 30.049196243286, 248.5955657959),
            vec4(223.92863464355, -799.27954101563, 30.051816940308, 245.73179626465),
            vec4(218.83876037598, -794.09326171875, 30.35453414917, 69.702018737793),
            vec4(219.87471008301, -791.64007568359, 30.348554611206, 71.268585205078),
            vec4(220.59092712402, -789.06988525391, 30.357908248901, 71.444534301758),
            vec4(222.03912353516, -786.76989746094, 30.355056762695, 67.613265991211),
            vec4(222.97917175293, -784.13739013672, 30.35160446167, 67.617485046387),
            vec4(223.76770019531, -781.47534179688, 30.347585678101, 68.365432739258),
            vec4(223.9525604248, -778.82995605469, 30.354362487793, 67.147850036621),
            vec4(225.5333404541, -776.49499511719, 30.358438491821, 69.575622558594),
            vec4(227.26254272461, -771.4951171875, 30.370796203613, 68.851127624512),
            vec4(228.49026489258, -768.87133789063, 30.374366760254, 68.287055969238),
            vec4(226.54216003418, -774.20452880859, 30.251081466675, 68.479804992676),
            vec4(210.74890136719, -791.29058837891, 30.369235992432, 247.9052734375),
            vec4(211.08680725098, -788.50836181641, 30.375566482544, 249.39794921875),
            vec4(212.10530090332, -786.18371582031, 30.35866355896, 247.84375),
            vec4(212.89445495605, -783.57611083984, 30.354200363159, 250.13743591309),
            vec4(213.99450683594, -780.95007324219, 30.337139129639, 247.25933837891),
            vec4(214.71755981445, -778.44421386719, 30.328977584839, 248.31039428711),
            vec4(216.24690246582, -776.07299804688, 30.307147979736, 249.57824707031),
            vec4(216.56443786621, -773.42944335938, 30.314338684082, 245.55035400391),
            vec4(217.7996673584, -771.30541992188, 30.300809860229, 248.5075378418),
            vec4(218.46691894531, -768.59442138672, 30.299493789673, 247.59033203125),
            vec4(219.81578063965, -766.03149414063, 30.289554595947, 253.64073181152),
        }
    },
    {
        name = "Impound Car",
        garagetype = 'impound',
        defaultGarage = 'Pillbox Hill',
        debug = false,
        zoneType = 'target',
        job = nil,
        society = nil,
        blip = true,
        intocar = false,
        isShared = false,
        carType = { 'automobile', 'bike' },
        priceImpound = 1050,
        defaultCars = false,
        actioncoords = vec4(409.2166, -1623.1970, 28.2919, 228.9087),
        npchash = 'csb_trafficwarden',
        thickness = 4.0,
        points = {
            vec3(387.54998779297, -1642.0, 29.0),
            vec3(409.35000610352, -1616.1500244141, 29.0),
            vec3(423.5, -1628.0, 29.0),
            vec3(423.79998779297, -1645.6500244141, 29.0),
            vec3(410.79998779297, -1661.5, 29.0),
        },
        spawnpos = {
            vec4(416.99752807617, -1627.75390625, 28.291940689087, 140.03999328613),
            vec4(419.36386108398, -1629.7000732422, 28.291940689087, 140.03999328613),
            vec4(420.62649536133, -1635.9697265625, 28.291940689087, 89.469985961914),
            vec4(420.59329223633, -1638.7214355469, 28.291940689087, 89.46997833252),
            vec4(420.28616333008, -1642.0139160156, 28.291940689087, 89.46997833252),
            vec4(418.02328491211, -1645.8610839844, 28.291940689087, 50.569976806641),
            vec4(410.69671630859, -1656.6166992188, 28.291896820068, 317.20999145508),
            vec4(408.39721679688, -1654.0144042969, 28.291879653931, 317.20999145508),
            vec4(406.32061767578, -1652.04296875, 28.292366027832, 317.20999145508),
            vec4(403.51016235352, -1650.4951171875, 28.294010162354, 321.10000610352),
            vec4(401.70568847656, -1647.8150634766, 28.292247772217, 321.10000610352),
            vec4(399.13949584961, -1646.0712890625, 28.291940689087, 321.10000610352),
            vec4(397.17230224609, -1643.4877929688, 28.291940689087, 321.10000610352),
            vec4(410.6633605957, -1636.5804443359, 28.291940689087, 50.570003509521),
            vec4(408.76055908203, -1639.0087890625, 28.291940689087, 50.569999694824)
        }
    },

    --Air
    {
        name = "Los Santos Airport Garage",
        garagetype = 'garage',
        debug = false,
        zoneType = 'target',
        job = nil,
        society = nil,
        blip = true,
        intocar = false,
        isShared = false,
        carType = { 'blimp', 'heli', 'plane' },
        priceImpound = 2100,
        defaultCars = false,
        actioncoords = vec4(-941.4559, -2954.7954, 12.9451, 147.6957),   ---orig - -993.6690, -2947.7861, 12.9573, 69.3818
        npchash = 'csb_trafficwarden',
        thickness = 10.0,
        points = {
            vec3(-1001.0, -2890.0, 14.0),
            vec3(-1066.0, -3002.0, 14.0),
            vec3(-937.0, -3076.0, 14.0),
            vec3(-871.0, -2958.0, 14.0),
        },
        spawnpos = {
            vec4(-977.8335, -2995.4028, 14.3397, 62.7751),

        }
    },
    {
        name = "Impound Air",
        garagetype = 'garage',
        debug = false,
        zoneType = 'target',
        job = nil,
        society = nil,
        blip = true,
        intocar = false,
        isShared = false,
        carType = { 'blimp', 'heli', 'plane' },
        priceImpound = 2100,
        defaultCars = false,
        actioncoords = vec4(-1242.0502, -3393.2512, 12.9401, 47.2912),
        npchash = 'csb_trafficwarden',
        points = {
            vec3(-1293.0, -3327.0, 14.0),
            vec3(-1332.0, -3394.0, 14.0),
            vec3(-1261.0, -3431.0, 14.0),
            vec3(-1212.0, -3369.0, 14.0),
        },
        thickness = 11.0,
        spawnpos = {
            vec4(-1271.1914, -3383.8330, 14.3332, 328.4508),

        }
    },


    --Boat
    {
        name = "La Puerta Boat Garage",
        garagetype = 'garage',
        debug = false,
        zoneType = 'target',
        job = nil,
        society = nil,
        blip = true,
        intocar = true,
        isShared = false,
        carType = { 'submarine', 'submarinecar', 'boat' },
        priceImpound = 1050,
        defaultCars = false,
        actioncoords = vec4(-717.8421, -1327.1147, 0.5963, 45.4428),
        npchash = 'csb_trafficwarden',
        points = {
            vec3(-727.0, -1305.0, 2.0),
            vec3(-689.0, -1335.0, 2.0),
            vec3(-794.0, -1460.0, 2.0),
            vec3(-811.0, -1408.0, 2.0),
        },
        thickness = 6.0,
        spawnpos = {
            vec4(-725.5939, -1326.9313, -0.0940, 231.4637),

        }
    },
    {
        name = "Impound Boat",
        garagetype = 'impound',
        debug = false,
        zoneType = 'target',
        job = nil,
        society = nil,
        blip = true,
        intocar = true,
        isShared = false,
        carType = { 'submarine', 'submarinecar', 'boat' },
        priceImpound = 1050,
        defaultCars = false,
        actioncoords = vec4(-783.7498, -1506.9052, 0.5952, 287.7686),
        npchash = 'csb_trafficwarden',
        points = {
            vec3(-766.0, -1462.0, 5.0),
            vec3(-815.0, -1480.0, 5.0),
            vec3(-796.0, -1522.0, 5.0),
            vec3(-751.0, -1508.0, 5.0),
        },
        thickness = 12.0,
        spawnpos = {
            vec4(-792.7961, -1502.4591, -0.0936, 108.3073),

        }
    },



    --- Custom
    {
        name = "LSPD",
        garagetype = 'custom',
        debug = false,
        zoneType = 'target',
        job = 'police',
        society = nil,
        blip = false,
        intocar = true,
        isShared = false,
        carType = { 'automobile', 'bicycle', 'bike', 'quadbike', 'trailer', 'amphibious_quadbike', 'amphibious_automobile' },
        priceImpound = 110,
        platePrefix = 'LSPD',
        defaultCars = {
            { model = 'police',  grades = { 1, 2, 3, 4 } }, -- Grandes for jobs
            { model = 'police2', grades = { 'boss' } },     -- Grandes for jobs
        },
        actioncoords = vec4(457.27026367188, -1007.4309082031, 27.297456741333, 195.85415649414),
        npchash = 'csb_trafficwarden',
        points = {
            vec3(411.0, -1002.0, 29.0),
            vec3(411.0, -1035.0, 29.0),
            vec3(492.0, -1028.0, 29.0),
            vec3(492.0, -1002.0, 29.0),
        },
        thickness = 6.0,
        spawnpos = {
            vec4(449.81292724609, -1018.3796386719, 27.528268814087, 330.99160766602)
        }
    },

}
