RegisterCommand('humeur', function(source, args, raw)
    if #args > 0 then
        local name = firstToUpper(string.lower(args[1]))

        if name == "Normal" then
            ClearFacialIdleAnimOverride(PlayerPedId())
        elseif Expressions[name] ~= nil then
            SetFacialIdleAnimOverride(PlayerPedId(), Expressions[name][1], 0)
        end
    end
end)

function firstToUpper(str)
    return str:sub(1, 1):upper() .. str:sub(2)
end

TriggerEvent('chat:addSuggestion', '/humeur', 'Changer votre expression', {{ name="expression", help="normal, happy, angry, injured..."}})