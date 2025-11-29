local isCurrentlySnowing = false
local serverWeather = Config.ClearWeatherType

AddEventHandler('playerSpawned', function()
    Citizen.Wait(5000)
    TriggerServerEvent('xmas:syncsrv')
end)

RegisterNetEvent('xmas:sync')
AddEventHandler('xmas:sync', function(weatherType)    
    serverWeather = weatherType

    if weatherType == Config.ClearWeatherType then
        isCurrentlySnowing = false
        SetSnowLevel(0.0)
        SetSnowCoverageType(0)
        SetWeatherType(weatherType)
    else
        isCurrentlySnowing = true
        SetSnowLevel(1.0)
    end
end)

if Config.EnableDynamicSnow then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5000) 
            local currentWeatherHash = Citizen.InvokeNative(0x423521DB2309B04A, 1)

            if isCurrentlySnowing then
                local playerPed = PlayerPedId()
                local coords = GetEntityCoords(playerPed)
                local currentZone = Citizen.InvokeNative(0x2970DF5A583CB685, coords.x, coords.y, coords.z)
                local isInDeepSnowZone = false

                for _, zone in ipairs(Config.DeepSnowRegions) do
                    if currentZone == zone then
                        isInDeepSnowZone = true
                        break
                    end
                end

                if isInDeepSnowZone then
                    SetSnowCoverageType(Config.DeepSnowLevel)
                else
                    SetSnowCoverageType(Config.SnowCoverageLevel)
                end

            end

            local expectedWeatherHash = GetHashKey(serverWeather)
            if currentWeatherHash ~= expectedWeatherHash then
                SetWeatherType(serverWeather)
            end
        end
    end)
end

function SetSnowCoverageType(type)
	return Citizen.InvokeNative(0xF02A9C330BBFC5C7, type)
end

function SetSnowLevel(level)
    return Citizen.InvokeNative(0xF6BEE7E80EC5CA40, level)
end

function SetWeatherType(weatherType)
	Citizen.InvokeNative(0x59174F1AFE095B5A, GetHashKey(weatherType), false, true, true, Config.WeatherTransitionDuration, false)
	Citizen.InvokeNative(0xD74ACDF7DB8114AF, true)
end

if Config.EnableDecorations then
    local spawnedProps = {}

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5000)
            local playerCoords = GetEntityCoords(PlayerPedId())
            TriggerServerEvent('xmas:getNearbyDecorations', playerCoords)
        end
    end)

    RegisterNetEvent('xmas:receiveDecorations')
    AddEventHandler('xmas:receiveDecorations', function(propsToSpawn)
        local currentProps = {}

        for _, propData in ipairs(propsToSpawn) do
            local propIdentifier = propData.model .. tostring(propData.coords)
            currentProps[propIdentifier] = true

            if not spawnedProps[propIdentifier] then
                local modelHash = GetHashKey(propData.model)
                RequestModel(modelHash)
                local timeout = 1000
                while not HasModelLoaded(modelHash) and timeout > 0 do
                    Citizen.Wait(100)
                    timeout = timeout - 100
                end

                if HasModelLoaded(modelHash) then
                    local prop = CreateObjectNoOffset(modelHash, propData.coords.x, propData.coords.y, propData.coords.z, false, false, true)
                    SetEntityHeading(prop, propData.coords.w)
                    FreezeEntityPosition(prop, true)
                    spawnedProps[propIdentifier] = prop 
                    SetModelAsNoLongerNeeded(modelHash) 
                end
            end
        end

        for identifier, propHandle in pairs(spawnedProps) do
            if not currentProps[identifier] then
                DeleteObject(propHandle)
                spawnedProps[identifier] = nil
            end
        end
    end)

    AddEventHandler('onResourceStop', function(resourceName)
        if GetCurrentResourceName() == resourceName then
            for identifier, propHandle in pairs(spawnedProps) do
                if DoesEntityExist(propHandle) then
                    DeleteObject(propHandle)
                end
            end
        end
    end)
end

RegisterCommand("scoords", function(source, args, rawCommand)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    
    local formattedCoords = string.format("{ model = 'NOM_DU_PROPS', coords = vec4(%.2f, %.2f, %.2f-1, %.2f) },", coords.x, coords.y, coords.z, heading)
    
    print(formattedCoords)
end, false)