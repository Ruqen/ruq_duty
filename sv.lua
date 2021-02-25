ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("ruq_duty:serverSignOn")
AddEventHandler("ruq_duty:serverSignOn", function()
    local player = ESX.GetPlayerFromId(source)

    if player.job.name == "offpolice" or player.job.name == "police" then
        if player.job.name ~= "police" then
            player.setJob("police", player.job.grade)
        else
            player.showNotification("You are already on duty.")
        end
    else
        player.showNotification("You are not a police.")
    end
end)

RegisterNetEvent("ruq_duty:serverSignOff")
AddEventHandler("ruq_duty:serverSignOff", function()
    local player = ESX.GetPlayerFromId(source)
    if player.job.name == "offpolice" or player.job.name == "police" then
        if player.job.name ~= "offpolice" then
            player.setJob("offpolice", player.job.grade)
        else
            player.showNotification("You are already off duty.")
        end
    else
        player.showNotification("You are not a police.")
    end
end)