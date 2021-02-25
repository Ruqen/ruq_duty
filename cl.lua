Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("PoliceDuty", vector3(441.79, -982.07, 30.69), 0.4, 0.6, {
        name = "PoliceDuty",
        heading = 91,
        debugPoly = false,
        minZ = 30.79,
        maxZ = 30.99
    }, {
        options = {
            {
                event = "ruq_duty:signOn",
                icon = "far fa-clipboard",
                label = "Sign On",
            },
            {
                event = "ruq_duty:signOff",
                icon = "far fa-clipboard",
                label = "Sign Off",
            },
        },
        distance = 1.5
    })
end)

RegisterNetEvent("ruq_duty:signOn")
AddEventHandler("ruq_duty:signOn", function()
    TriggerServerEvent("ruq_duty:serverSignOn")
end)

RegisterNetEvent("ruq_duty:signOff")
AddEventHandler("ruq_duty:signOff", function()
    TriggerServerEvent("ruq_duty:serverSignOff")
end)
