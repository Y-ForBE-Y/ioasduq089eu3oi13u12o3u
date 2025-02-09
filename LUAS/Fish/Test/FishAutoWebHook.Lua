-- Ссылки на необходимые сервисы
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- URL для получения данных
local url = "https://raw.githubusercontent.com/Y-ForBE-Y/ioasduq089eu3oi13u12o3u/main/FishData"
local scriptContent = game:HttpGet(url)
local module_2_upvr = loadstring(scriptContent)()

local http_request = http_request or request or (syn and syn.request) or (http and http.request)
local webhook_url = "https://discord.com/api/webhooks/1335778912579620905/CRHJaIk3DY95b5fI-41DOLYxRz0ogvCjY8OIJaeyCEPlYiCEKUeG3gGYppLWl0gN5OIJ"



local TargetPlayer = nil; --TargetPlayer = HUISOSIKUSITUNITY

TargetPlayer = localPlayer

-- Ссылка на папку Inventory
local inventory = ReplicatedStorage.playerstats[TargetPlayer.Name].Inventory

-- Таблица для хранения подключений
local connections = {}


-- Функция для проверки значения с автоматическим определением типа
local function checkValue(value)
    if type(value) == "table" then
        return #value > 0 and table.concat(value, ", ") or "NIL"  -- Проверка, что таблица не пуста
    elseif value == nil then
        return "NIL"
    elseif type(value) == "userdata" then
        return tostring(value)
    else
        return tostring(value)
    end
end

-- Функция для деления значений на 10
local function adjustWeightPool(weightString)
    local result = {}

    if weightString == nil or weightString == "" or weightString == 0 or weightString == "NIL" then
        return "NIL"
    end

    for value in string.gmatch(weightString, "%d+%.?%d*") do
        local dividedValue = tonumber(value) / 10
        table.insert(result, tostring(dividedValue))
    end
    return table.concat(result, ", ")
end

local function SendWebHook(fish)
    local fishName = fish and fish.Value or "NIL"
    local Stack = fish and fish:FindFirstChild("Stack") and fish.Stack.Value or "NIL"
    local Weight = fish and fish:FindFirstChild("Weight") and fish.Weight.Value or "NIL"
    local Custom_Size = nil

    local fishData = module_2_upvr[fishName] or {}

    -- Определяем кастомный размер рыбы
    if fishData.WeightPool and Weight then
        if fishData.WeightPool[2] / 10 * 1.99 <= Weight then
            Custom_Size = "Giant"
        elseif fishData.WeightPool[2] / 10 < Weight then
            Custom_Size = "Big"
        end
    end

    -- Дополнительные свойства
    local Mutation = fish:FindFirstChild("Mutation") and fish.Mutation.Value or nil
    local Is_Shiny = fish:FindFirstChild("Shiny") and fish.Shiny.Value == true
    local Is_Sparkling = fish:FindFirstChild("Sparkling") and fish.Sparkling.Value == true

    local formattedWeight = adjustWeightPool(checkValue(fishData.WeightPool))

    -- Формируем список характеристик
    local attributes = {}

    if Is_Sparkling then table.insert(attributes, "Sparkling") end
    if Is_Shiny then table.insert(attributes, "Shiny") end
    if Custom_Size then table.insert(attributes, Custom_Size) end
    if Mutation then table.insert(attributes, Mutation) end

    table.insert(attributes, checkValue(fishName))  -- Добавляем название рыбы в конце

    -- Объединяем атрибуты в одну строку
    local TitleString = ":fish: Пойманная рыба: " .. table.concat(attributes, ", ") .. " :fish:"

    local data = {
        username = "Evitan Hub - PlayerName: " .. localPlayer.Name,
        avatar_url = "https://pbs.twimg.com/profile_images/1861623214352257024/KoyCB-FT_400x400.jpg",
        embeds = {{
            title = TitleString,
            description = "Описание: " .. checkValue(fishData.Description),
            color = math.random(0, 16777215),
            fields = {
                { name = "Вес рыбы", value = checkValue(Weight), inline = true },
                { name = "Редкость", value = checkValue(fishData.Rarity), inline = true },
                { name = "Шанс ловли", value = checkValue(fishData.Chance), inline = true },
                { name = "Подсказка", value = checkValue(fishData.Hint), inline = true },
                { name = "Эффективность ловли", value = checkValue(fishData.Resilience), inline = true },
                { name = "Любимая приманка", value = checkValue(fishData.FavouriteBait), inline = true },
                { name = "Любимое время", value = checkValue(fishData.FavouriteTime), inline = true },
                { name = "Базовая цена", value = checkValue(fishData.Price), inline = true },
                { name = "Базовое XP", value = checkValue(fishData.XP), inline = true },
                { name = "Сезон", value = checkValue(fishData.Seasons), inline = true },
                { name = "Погода", value = checkValue(fishData.Weather), inline = true },
                { name = "Количество", value = checkValue(Stack), inline = true },
                { name = "Разброс веса", value = checkValue(formattedWeight), inline = true },
                { name = "Ловится в зоне", value = checkValue(fishData.From), inline = true },
            },
            thumbnail = { url = "https://pbs.twimg.com/profile_images/1861623214352257024/KoyCB-FT_400x400.jpg" },
            footer = { text = "Отправлено автоматически с помощью YForBEY WebHookService :rocket:" }
        }}
    }

    local payload = game:GetService("HttpService"):JSONEncode(data)

    http_request({
        Url = webhook_url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = payload
    })
end

print("Вебхук Подключен")


-- Функция для отслеживания изменений в Stack и вывода текущих значений
local function trackStackChanges(item, isNew)
    local stack = item:FindFirstChild("Stack")
    
    -- Проверка, что Stack существует и это NumberValue
    if stack and stack:IsA("NumberValue") then
        local previousValue = stack.Value

        --[[
        -- Если объект новый, ждем изменения числа Stack
        if not isNew and previousValue > 0 then
            -- Выводим текущее значение, если число больше 0
            print("Объект:", item.Name, "начальный Stack:", stack.Value)
        end]]

        local firstChange = isNew  -- Флаг для пропуска первого изменения после добавления

        -- Отслеживание изменений значения Stack
        local conn = stack.Changed:Connect(function(newValue)
            if firstChange then
                -- Пропускаем первое изменение после добавления (если Stack не изменился сразу)
                firstChange = false
            elseif newValue > 0 and newValue ~= previousValue then
                -- Выводим изменения, если значение Stack больше 0 и изменилось
                --print("Объект:", item.Name, "Stack изменился с", previousValue, "на", newValue)
                print("Объект:", item.Value, "Количество изменино с", previousValue, "на", newValue)
                wait(0.5)
                SendWebHook(item)

                previousValue = newValue
            end
        end)
        
        -- Сохраняем подключение для последующего отключения
        table.insert(connections, conn)
    end
end

-- Функция для обработки добавления новых объектов
local function onChildAdded(child)
    --print("Добавлен новый объект:", child.Name)
    print("Поймана новая рыба:", child.Value)
    trackStackChanges(child, true)  -- Передаем флаг isNew = true
    wait(0.5)
    SendWebHook(child)
end

-- Подключение для отслеживания добавления новых объектов
local childAddedConnection = inventory.ChildAdded:Connect(onChildAdded)
table.insert(connections, childAddedConnection)

-- Подключение отслеживания для уже существующих объектов и вывод их значений
for _, child in ipairs(inventory:GetChildren()) do
    trackStackChanges(child, false)  -- Передаем флаг isNew = false
end

print("Все шаги для подключения Счётчика ловли рыб выполнены")