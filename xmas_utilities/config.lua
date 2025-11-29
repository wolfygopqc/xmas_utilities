Config = {}

Config.EnableSnowSystem = true -- Activer ou désactivée le système de neige .

Config.ChanceToSnow = 45 -- Probabilité de neiger

Config.MinSnowDurationMinutes = 15 -- Durée minimum de naigage
Config.MaxSnowDurationMinutes = 60 -- Durée maximum de neigage

Config.SnowWeatherTypes = { -- Ne pas toucher si on connais pas
    "WHITEOUT",
    "GROUNDBLIZZARD",
    "WHITEOUT"
}

Config.ClearWeatherType = "SUNNY" -- Ne pas toucher si on connais pas

Config.SnowCoverageLevel = 3 -- Ne pas toucher si on connais pas

Config.EnableDynamicSnow = true -- Ne pas toucher si on connais pas

Config.DeepSnowRegions = { "AMBARINO" } -- Ne pas toucher si on connais pas

Config.DeepSnowLevel = 4 -- Ne pas toucher si on connais pas

Config.WeatherTransitionDuration = 60.0 -- Ne pas toucher si on connais pas

Config.EnableDecorations = true -- Activer ou désactivée les props configurer ci-dessous par mes soins .

Config.DecorationStreamDistance = 100.0 -- Ne pas toucher si on connais pas

-- Utilisez la commande /scoords pour avoir un format exemple avec les coordonnées de votre joueur !
Config.DecorationProps = {
    -- Valentine
    { model = 'mp006_p_xmastree01x', coords = vec4(-275.91, 785.18, 119.50-1, 3.47) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-289.01, 802.06, 119.38-1, 192.42) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-311.44, 778.46, 118.70-1, 279.55) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-329.54, 774.28, 117.44-1, 275.24) },
    -- Saint-Denis
    { model = 'mp006_p_xmastree01x', coords = vec4(2734.50, -1259.91, 49.76-1, 56.96) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2602.10, -1286.67, 52.26-1, 118.70) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2637.80, -1220.83, 53.38-1, 120.37) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2628.24, -1229.86, 59.59-1, 96.92) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2552.12, -1166.45, 53.68-1, 270.61) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2652.15, -1292.57, 52.27-1, 295.21) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2317.35, -1468.84, 52.03-1, 270.12) }, -- Chouuuuchouuuuuu
    -- Rhodes
    { model = 'mp006_p_xmastree01x', coords = vec4(1340.12, -1379.94, 80.48-1, 170.26) },
    { model = 'mp006_p_xmastree01x', coords = vec4(1349.73, -1370.96, 80.48-1, 348.29) },
    { model = 'mp006_p_xmastree01x', coords = vec4(1331.77, -1319.33, 77.95-1, 164.80) },
    { model = 'mp006_p_xmastree01x', coords = vec4(1341.80, -1301.28, 77.43-1, 249.43) },
    { model = 'mp006_p_xmastree01x', coords = vec4(1360.19, -1297.63, 77.76-1, 339.54) },
    -- Blackwater
    -- Il n'y en a pas
    -- Armadillo
    { model = 'mp006_p_xmastree01x', coords = vec4(-3624.21, -2608.14, -13.34-1, 203.74) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-3698.04, -2589.42, -13.32-1, 269.95) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-3650.51, -2599.68, -13.16-1, 2.62) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-3696.39, -2600.53, -13.30-1, 227.15) },
    -- Tumbleweed
    { model = 'mp006_p_xmastree01x', coords = vec4(-5530.46, -2925.63, -1.36-1, 121.16) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-5528.39, -2950.06, -0.70-1, 104.60) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-5507.70, -2914.26, -1.75-1, 299.09) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-5511.70, -2916.76, 1.64-1, 213.55) },
    -- Strawberry
    { model = 'mp006_p_xmastree01x', coords = vec4(-1829.58, -404.58, 162.40-1, 326.35) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-1810.35, -352.44, 164.66-1, 203.02) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-1799.65, -386.25, 160.24-1, 324.74) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-1821.10, -429.60, 159.99-1, 351.50) },
    -- Écurie Van Horn
    { model = 'mp006_p_xmastree01x', coords = vec4(2937.50, 782.02, 52.15-1, 223.48) },
    -- Annesburg
    { model = 'mp006_p_xmastree01x', coords = vec4(2925.78, 1378.63, 56.24-1, 251.15) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2780.55, 1395.96, 69.39-1, 302.33) },
    { model = 'mp006_p_xmastree01x', coords = vec4(2905.59, 1315.95, 44.94-1, 214.13) },
    -- Van Horn
    { model = 'mp006_p_xmastree01x', coords = vec4(3026.80, 564.61, 44.72-1, 171.52) },
    -- Limpany
    { model = 'mp006_p_xmastree01x', coords = vec4(-340.17, -152.16, 50.70-1, 154.27) }, -- Plume Plume
    -- Macfarlane's Ranch
    { model = 'mp006_p_xmastree01x', coords = vec4(-2400.91, -2385.15, 61.49-1, 161.08) },
    { model = 'mp006_p_xmastree01x', coords = vec4(-2492.50, -2421.80, 60.58-1, 110.33) },
    -- Non catégorisée
    { model = 'mp006_p_xmastree01x', coords = vec4(-3961.47, -2123.03, -4.08-1, 138.89) },
    -- Thieves Landing
    { model = 'mp006_p_xmastree01x', coords = vec4(-1424.63, -2277.72, 43.37-1, 79.12) },
    -- Emerald Ranch
    { model = 'mp006_p_xmastree01x', coords = vec4(1430.63, 317.05, 88.74-1, 260.53) },
}
