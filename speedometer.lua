function text(content)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(1.9, 1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.9, 0.7)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)

        -- kph's is = *3.6
        -- mph'S is = *2.2369

        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6
        -- check if the ped is in a vehicle 
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))

        end
    end

end)
