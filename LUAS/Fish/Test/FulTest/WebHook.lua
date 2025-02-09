local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- URL для получения данных
local url = "https://raw.githubusercontent.com/Y-ForBE-Y/ioasduq089eu3oi13u12o3u/main/FishData"
local scriptContent = game:HttpGet(url)
local module_2_upvr = loadstring(scriptContent)()

local http_request = http_request or request or (syn and syn.request) or (http and http.request)
local webhook_url = "https://discord.com/api/webhooks/1335778912579620905/CRHJaIk3DY95b5fI-41DOLYxRz0ogvCjY8OIJaeyCEPlYiCEKUeG3gGYppLWl0gN5OIJ"

local Cochedfish = game:GetService("ReplicatedStorage").playerstats.HUISOSIKUSITUNITY.Inventory["Chinook Salmon553764047"]

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
	local fishName = fish and fish.Value-- or "NIL"
	local Stack = fish and fish.Stack and fish.Stack.Value-- or "NIL"
	local Weight = fish and fish.Weight and fish.Weight.Value-- or "NIL"
    
    local TitleString = nil

    -- Проверяем, существует ли свойство Mutation
    if fish:FindFirstChild("Mutation") then
        local Mutation = fish.Mutation.Value
        TitleString = ":fish: Пойманная рыба: " .. checkValue(Mutation) .. " " .. checkValue(fishName)
    else
        TitleString = ":fish: Пойманная рыба: " .. checkValue(fishName)
    end
    
	local fishData = module_2_upvr[fishName]-- or {}

	local formattedWeight = adjustWeightPool(checkValue(fishData.WeightPool))

    local data = {
        username = "Evitan Hub-" .. "PlayerName: " .. localPlayer.Name,  -- Устанавливаем кастомное имя
        avatar_url = "https://pbs.twimg.com/profile_images/1861623214352257024/KoyCB-FT_400x400.jpg",  -- Картинка для аватара
        embeds = {{
            

            title = TitleString,
            description = "Описание: " .. checkValue(fishData.Description),
            color = math.random(0, 16777215),  -- Генерация случайного цвета
            
            fields = {
                { name = "Вес рыбы", value = checkValue(Weight), inline = true },
                { name = "Редкость", value = checkValue(fishData.Rarity), inline = true },
                { name = "Шанс ловли", value = checkValue(fishData.Chance), inline = true },
                { name = "Подсказка", value = checkValue(fishData.Hint), inline = true },
                { name = "Эфективность ловли", value = checkValue(fishData.Resilience), inline = true },
                { name = "Любимая приманка", value = checkValue(fishData.FavouriteBait), inline = true },
                { name = "Любимое время", value = checkValue(fishData.FavouriteTime), inline = true },
                { name = "Базавая цена", value = checkValue(fishData.Price), inline = true },
                { name = "Базовое XP", value = checkValue(fishData.XP), inline = true },
                { name = "Сезон", value = checkValue(fishData.Seasons), inline = true },
                { name = "Погода", value = checkValue(fishData.Weather), inline = true },
                { name = "Количество", value = checkValue(Stack), inline = true },
                { name = "Разброс веса", value = checkValue(formattedWeight), inline = true },
                { name = "Ловится в зоне", value = checkValue(fishData.From), inline = true },
            },

            thumbnail = { url = "https://pbs.twimg.com/profile_images/1861623214352257024/KoyCB-FT_400x400.jpg" },
            footer = { text = "Отправлено автоматически c помощью YForBEY WebHookService :rocket:" }
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

SendWebHook(Cochedfish)

print("Вебхук отправлен")
