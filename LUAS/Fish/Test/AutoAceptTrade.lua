-- Автоприем трейдов с исправленным выводом модификаторов размера, раритетности, Sparkling и других свойств

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Подключаемся к событию трейда
local tradeEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("offeritem")

-- Функция, автоматически принимающая трейды
tradeEvent.OnClientInvoke = function(sender, item)
    if sender == LocalPlayer then
        -- Игнорируем запросы от самого себя
        return nil
    end

    -- Получаем имя и свойства рыбы/предмета
    local itemName = item.Value or "Unknown Item"
    local itemStats = {}

    -- Проверяем раритетность рыбы
    if item:FindFirstChild("Rarity") then
        local rarityValue = item.Rarity.Value
        table.insert(itemStats, "Rarity: " .. rarityValue)
    end

    -- Проверяем размер рыбы и добавляем модификатор (например, Big, Giant)
    if item:FindFirstChild("Size") then
        local sizeValue = item.Size.Value
        if sizeValue == "Big" then
            table.insert(itemStats, "Size: Big")
        elseif sizeValue == "Giant" then
            table.insert(itemStats, "Size: Giant")
        else
            table.insert(itemStats, "Size: " .. sizeValue)
        end
    end

    if item:FindFirstChild("Weight") then
        table.insert(itemStats, "Weight: " .. item.Weight.Value)
    end
    if item:FindFirstChild("Shiny") and item.Shiny.Value then
        table.insert(itemStats, "Shiny: Yes")
    end
    if item:FindFirstChild("Sparkling") and item.Sparkling.Value then
        table.insert(itemStats, "Sparkling: Yes")
    end
    if item:FindFirstChild("Mutation") then
        table.insert(itemStats, "Mutation: " .. item.Mutation.Value)
    end
    if item:FindFirstChild("Price") then
        table.insert(itemStats, "Price: " .. item.Price.Value .. " coins")
    end

    -- Выводим информацию в консоль
    print("Получен трейд от:", sender.Name)
    print("Предмет:", itemName)
    if #itemStats > 0 then
        print("Статы предмета:")
        for _, stat in ipairs(itemStats) do
            print(" - " .. stat)
        end
    else
        print("Нет дополнительных статов для этого предмета.")
    end

    -- Возвращаем true для принятия трейда
    return true
end

print("acept Start")
