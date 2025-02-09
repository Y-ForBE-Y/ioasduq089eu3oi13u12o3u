local player = game.Players.LocalPlayer
local backpack = player.Backpack

-- Загружаем данные один раз
local url = "https://raw.githubusercontent.com/Y-ForBE-Y/ioasduq089eu3oi13u12o3u/main/FishData"
local scriptContent = game:HttpGet(url)
local module_2_upvr = loadstring(scriptContent)()

-- Кэшируем модули и данные
local rodsModule = require(game:GetService("ReplicatedStorage").modules.library.rods)
local rodNamesSet = {}

-- Используем таблицу для быстрого поиска
for rodName in pairs(rodsModule) do
    rodNamesSet[rodName] = true
end

local selectedBobber = game:GetService("ReplicatedStorage").playerstats.HUISOSIKUSITUNITY.Stats.bobber.Value

-- Функция для получения экипированного инструмента
local function getEquippedTool()
    return player.Character and player.Character:FindFirstChildOfClass("Tool")
end

-- Проверка, является ли инструмент удочкой
local function isRod(toolName)
    return rodNamesSet[toolName] or false
end

-- Основная логика
local equippedTool = getEquippedTool()
if equippedTool then
    local equippedToolName = equippedTool.Name
    
    if isRod(equippedToolName) then
        -- Кэшируем ссылки на объекты для уменьшения задержек
        local playerModel = workspace:FindFirstChild(player.Name)
        local equippedToolInWorkspace = playerModel and playerModel:FindFirstChild(equippedToolName)
        
        if equippedToolInWorkspace then
            local bobberFolder = equippedToolInWorkspace:FindFirstChild("bobber")
            local selectedBobberModel = bobberFolder and bobberFolder:FindFirstChild(selectedBobber)

            if bobberFolder and selectedBobberModel then
                -- Перебираем объекты в bobberFolder
                for _, obj in ipairs(bobberFolder:GetChildren()) do
                    if obj:IsA("Model") and obj.Name ~= selectedBobber then
                        print("Модель в папке bobber: " .. obj.Name)
                        
                        local fishData = module_2_upvr[obj.Name]
                        if fishData then
                            print("Rarity:", fishData.Rarity)
                            print("Chance:", fishData.Chance)
                            print("From:", fishData.From)
                            print("Description:", fishData.Description)
                            print("Hint:", fishData.Hint)
                            print("Resilience:", fishData.Resilience)
                            print("FavouriteBait:", fishData.FavouriteBait)
                            print("FavouriteTime:", fishData.FavouriteTime)
                            print("Price:", fishData.Price)
                        else
                            print("Данных о рыбе не найдено для:", obj.Name)
                        end
                    end
                end
            else
                print("Выбранная поплавковая модель не найдена.")
            end
        else
            print("Инструмент не найден в workspace.")
        end
    else
        print("Экипированный инструмент не является удочкой.")
    end
else
    print("Инструмент не экипирован.")
end
