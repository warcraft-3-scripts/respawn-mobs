function InitGlobals()
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, FourCC("Hblm"), 209.3, -115.4, 177.830)
end

function CreateNeutralHostile()
    local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local u
    local unitID
    local t
    local life
    u = CreateUnit(p, FourCC("nban"), -1465.4, -152.6, 60.646)
    u = CreateUnit(p, FourCC("nban"), -1450.0, -236.9, 264.548)
    u = CreateUnit(p, FourCC("nban"), -339.7, 419.8, 256.517)
    u = CreateUnit(p, FourCC("nban"), -560.5, -764.2, 260.329)
    u = CreateUnit(p, FourCC("nban"), -522.1, -827.1, 311.175)
    u = CreateUnit(p, FourCC("nban"), -1611.7, -1532.3, 158.955)
    u = CreateUnit(p, FourCC("nban"), -1591.9, -1678.6, 146.584)
    u = CreateUnit(p, FourCC("nban"), -1653.3, -1594.7, 338.653)
    u = CreateUnit(p, FourCC("nban"), -1681.6, -1708.6, 353.012)
    u = CreateUnit(p, FourCC("nban"), -1789.2, -1528.3, 219.667)
    u = CreateUnit(p, FourCC("nenf"), 766.9, -2162.0, 84.081)
    u = CreateUnit(p, FourCC("nban"), 848.6, -2026.8, 199.078)
    u = CreateUnit(p, FourCC("nban"), 633.6, -2139.5, 348.827)
    u = CreateUnit(p, FourCC("nenf"), 2703.3, 2488.6, 338.653)
    u = CreateUnit(p, FourCC("nenf"), 2789.8, 2357.2, 95.903)
    u = CreateUnit(p, FourCC("nenf"), 2782.1, 2515.4, 54.692)
    u = CreateUnit(p, FourCC("nenf"), 2886.2, 2456.6, 105.329)
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreateNeutralHostile()
    CreatePlayerUnits()
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("LordaeronSummerDay")
    SetAmbientNightSound("LordaeronSummerNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 896.0, -640.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end

