if Config.EnableSnowSystem then
    local isSnowing = false
    local currentSnowTimer = nil
    local currentWeather = Config.ClearWeatherType

    function stopSnowing()
        isSnowing = false
        currentWeather = Config.ClearWeatherType
        TriggerClientEvent('xmas:sync', -1, currentWeather)
        currentSnowTimer = nil
    end
    

    function startSnowing()
        isSnowing = true
        local snowType = Config.SnowWeatherTypes[math.random(#Config.SnowWeatherTypes)]
        currentWeather = snowType
        TriggerClientEvent('xmas:sync', -1, currentWeather)

        local snowDuration = math.random(Config.MinSnowDurationMinutes, Config.MaxSnowDurationMinutes) * 60000
        currentSnowTimer = SetTimeout(snowDuration, stopSnowing)
    end

    function weatherManager()
        if not isSnowing and math.random(100) <= Config.ChanceToSnow then
            startSnowing()
        end
        SetTimeout(300000, weatherManager)
    end

    SetTimeout(5000, function()
        startSnowing()
        SetTimeout(300000, weatherManager)
    end)
end

RegisterServerEvent('xmas:syncsrv')
AddEventHandler('xmas:syncsrv', function()
	local _source = source
	TriggerClientEvent('xmas:sync', _source, currentWeather)
end)

if Config.EnableDecorations then
    RegisterServerEvent('xmas:getNearbyDecorations')
    AddEventHandler('xmas:getNearbyDecorations', function(playerCoords)
        local nearbyProps = {}
        for _, prop in ipairs(Config.DecorationProps) do
            if #(playerCoords - prop.coords.xyz) < Config.DecorationStreamDistance then
                table.insert(nearbyProps, prop)
            end
        end
        TriggerClientEvent('xmas:receiveDecorations', source, nearbyProps)
    end)
end