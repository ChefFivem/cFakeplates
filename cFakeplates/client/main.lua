ESX = nil
Locale = 'Fr'
print(GetCurrentResourceName().. ' est exécuté en ' ..Locale)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    ESX.PlayerData = ESX.GetPlayerData()
end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
    Citizen.Wait(500)
end)

RegisterCommand('createfakeplate', function()
    TriggerEvent('client:createfakeplate')
end)

RegisterCommand('removeplate', function()
    changeplate('')
end)

RegisterNetEvent("client:createfakeplate")
AddEventHandler("client:createfakeplate", function()
    local random = math.random(00001, 99999)
    local platetext = " A" ..random.. "Z"
    changeplate(platetext)
end)

function changeplate(text)
    local pCoords = GetEntityCoords(PlayerPedId())
    local vehicle = GetClosestVehicle(pCoords.x, pCoords.y, pCoords.z, 5.0, 0, 71)

    ESX.ShowNotification("~g~Changement de la plaque en cours...~w~")
    TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)
    Citizen.Wait(10000)
    SetVehicleNumberPlateText(vehicle, text)
    ClearPedTasksImmediately(PlayerPedId())
    if text == "" then
        ESX.ShowNotification("Vous venez de retirer la ~p~plaque~w~")
    else
        ESX.ShowNotification("Changement de la plaque en ~p~" ..text.. "~w~")
    end
end
