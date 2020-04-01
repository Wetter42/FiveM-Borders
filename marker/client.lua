--Borders Mod made by Wetter42! Feel free to use it but just give credit, and DO NOT take credit for this mod OR SELL IT! Love yah!
local flag = false

function ShowNotification( text )
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(text)
        DrawNotification(false, false)
end

RegisterCommand("borders", function(source, args, RawCommand)
        if args[1] == 'on' then
                 flag = true
        else if args[1] == 'off' then
                 flag = false
else
                ShowNotification("~g~~b~Wrong usage! Try this: /borders [on/off]")
        end
end
end)

Citizen.CreateThread(function()
        while true do
                Wait(500)
                while flag == true do
                        Wait(0)
        --West side border
        DrawMarker(43, -7999.94, 500.0, 0.0, -3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 17000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        --East side border
        DrawMarker(43, 7999.96, 500.0, 0.0, 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 17000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        --North side border
        DrawMarker(43, 0.0, 8999.92, 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 16000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
        --South side border
        DrawMarker(43, 0.0, -7999.98, -3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 16000.0, 0.2, 2699.75, 255, 255, 255, 20, false, false, 2, false, false, false, false)
                        end
                    end
end)
