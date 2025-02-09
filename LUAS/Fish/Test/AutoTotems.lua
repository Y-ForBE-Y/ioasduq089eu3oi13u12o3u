local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local player = Players.LocalPlayer


local worldCycle = ReplicatedStorage:WaitForChild("world"):WaitForChild("cycle")
local worldweather = ReplicatedStorage:WaitForChild("world"):WaitForChild("weather")

local Config = {
	ignoreEclepse = true,
	ignoreAurora = false,
}


-- Функция для снятия всех предметов из рук
local function unequipAllTools()
    local character = player.Character
    if character then
        for _, tool in ipairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = player.Backpack  -- Возвращаем предмет в рюкзак
                print(tool.Name .. " убран в рюкзак")
            end
        end
    end
end

-- Функция для выбора предмета
local function selectTool(TooltoEquip)
    unequipAllTools()  -- Снимаем текущие предметы перед выбором нового
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        local selectedTool = backpack:FindFirstChild(TooltoEquip)
        if selectedTool then
            selectedTool.Parent = player.Character  -- Перемещаем предмет в руку
            print(TooltoEquip .. " выбран и перемещен в руку")
        else
            warn(TooltoEquip .. " не найден в рюкзаке")
        end
    else
        warn("Рюкзак не найден")
    end
end

-- Функция для выполнения клика в центре экрана
local function clickCenterScreen()
    local viewportSize = workspace.CurrentCamera.ViewportSize
    local centerX = viewportSize.X / 2
    local centerY = viewportSize.Y / 2

    VirtualInputManager:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, true, game, 0)
    VirtualInputManager:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, false, game, 0)
end




-- Auto Fantom Mega
local function FantomFarm()
	if worldCycle.Value == "Night" then

		if Config.ignoreAurora then
			selectTool("Sundial Totem")
			elseif worldweather.Value ~= "Aurora_Borealis" then
				selectTool("Sundial Totem")
		end
		
	elseif worldCycle.Value == "Day" then
		if worldweather.Value ~= "Eclipse" then
			selectTool("Eclipse Totem")
			else
			selectTool("Sundial Totem")
		end
	end
end

-- Auto Aurora Totem
local function AuroraFarm()
	if worldCycle.Value == "Night" then
		if worldweather.Value ~= "Aurora_Borealis" then
			selectTool("Aurora Totem")
		end
	elseif worldCycle.Value == "Day" then
		if Config.ignoreEclepse then
			selectTool("Sundial Totem")

			elseif worldweather.Value ~= "Eclipse" then
				selectTool("Sundial Totem")
		end
	end
end 

while wait(1) do
	AuroraFarm()
	wait(0.1)
	clickCenterScreen()
end

