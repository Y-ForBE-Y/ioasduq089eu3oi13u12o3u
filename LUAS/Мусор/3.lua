local player = game.Players.LocalPlayer
local backpack = player.Backpack

-- Загружаем данные один раз
--local url = "https://raw.githubusercontent.com/Y-ForBE-Y/ioasduq089eu3oi13u12o3u/main/FishData"
--local scriptContent = game:HttpGet(url)
--local module_2_upvr = loadstring(scriptContent)()

game:GetService("ReplicatedStorage").modules.library.fish

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

local equippedTool = getEquippedTool()

if equippedTool then
    local equippedToolName = equippedTool.Name

    if isRod(equippedToolName) then
        print(equippedToolName)
        else
            print("Какая то хуйня")
    end
end
