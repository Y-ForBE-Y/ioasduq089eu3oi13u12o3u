--[[ ]]
print("Injected")

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.823762893676758, 137.24998474121094, -11562.669921875)

-- Ждем только если пауза
function waitIfPaused()
	while game:GetService("Players").LocalPlayer.GameplayPaused do
		wait(0.1)
	end
	wait(0.1)
end

waitIfPaused()
wait(3)

local houses = {
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("001"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("067"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("121"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("196"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("236"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("448"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("510"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("666"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("777"),
    workspace.world.map["Crook's Hallow"].Houses:FindFirstChild("974")
}

local TeleportPositions = {
    Door1 = CFrame.new(294.4012756347656, 156.2487030029297, -11522.2626953125),
    Door2 = CFrame.new(295.19830322265625, 164.4941864013672, -11722.3603515625),
    Door3 = CFrame.new(-24.51972770690918, 190.60992431640625, -11691.15625),
    Door4 = CFrame.new(174.95574951171875, 163.09396362304688, -11449.8251953125),
    Door5 = CFrame.new(141.523193359375, 146.47857666015625, -11596.2177734375),
    Door6 = CFrame.new(230.57778930664062, 144.63844299316406, -11466.8798828125),
    Door7 = CFrame.new(125.26692962646484, 146.16824340820312, -11498.564453125),
    Door8 = CFrame.new(-12.954100608825684, 147.74993896484375, -11465.0634765625),
    Door9 = CFrame.new(263.85504150390625, 163.12301635742188, -11568.748046875),
    Door10 = CFrame.new(200.7849578857422, 144.747802734375, -11583.408203125),
}


local function UnEquipAllTool()
    local character = game.Players.LocalPlayer.Character
    if character then
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                -- Действия с tool
                print("Tool найден:", tool.Name)
				tool.Parent = game:GetService("Players").LocalPlayer.Backpack
            end
        end
    end
end

local function EquipCandyBuket()
    local character = game.Players.LocalPlayer.Character
    if character then
		if not character:FindFirstChild("Candy Bucket") then
			local Bucket_in_Backpack = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Candy Bucket")
			if Bucket_in_Backpack then
				UnEquipAllTool()
				Bucket_in_Backpack.Parent = character
			else
				--print("Error You don't have Bucket")
			end
		else
			--print("Error Bucket Equiped")
		end
    end
end

-- Функция для обновления позиции камеры
local function RotateCamera(targetPart)
	local camera = workspace.CurrentCamera

    local targetPosition = targetPart.Position
    for i = 0, 6*3 do
        -- Направляем камеру на центр целевой части
        camera.CFrame = CFrame.lookAt(
            camera.CFrame.Position,  -- Сохраняем текущую позицию камеры
            targetPosition           -- Смотрим на позицию целевой части
        )
        task.wait()
    end
end



local InProgresTreekOrTreet = false
local LastTreekOrTreetTime = 0
local TimeDelay = 630 -- 10.5 минут в секундах

function findAndPrintBaseParts()
    -- Проверка кулдауна и статуса выполнения
    if InProgresTreekOrTreet or os.time() - LastTreekOrTreetTime < TimeDelay then
        local remainingTime = TimeDelay - (os.time() - LastTreekOrTreetTime)
        print("RETURNING - Cooldown active. Remaining: " .. remainingTime .. "s")
        return
    end
    
    -- Защита от повторного запуска
    InProgresTreekOrTreet = true
    LastTreekOrTreetTime = os.time()
    
    local success, errorMsg = pcall(function()
        local results = {}
        
        local function search(obj)
            if obj:IsA("Part") and obj.Name == "Base" and obj.Parent.Name ~= "FakeDoor" then
                table.insert(results, obj)
            end
            for _, child in ipairs(obj:GetChildren()) do
                search(child)
            end
        end
        
        for _, house in ipairs(houses) do
            if house then search(house) end
        end
        
       -- print("Найдено Base parts: " .. #results)
       -- print("LastTreekOrTreetTime: " .. LastTreekOrTreetTime)
        
        for i, basePart in ipairs(results) do
            local door = basePart.Parent.Parent
            print(i .. ". " .. basePart:GetFullName() .. ", Door: " .. door.Name)
            
            local NewPosition = TeleportPositions[door.Name]
            
            -- Проверка перед телепортацией
            if NewPosition and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                EquipCandyBuket()
                
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NewPosition
                --print("Телепортирован к " .. door.Name)
            else
                ---warn("Не удалось телепортироваться к " .. door.Name)
            end
            
            waitIfPaused()
            RotateCamera(basePart)
            fireproximityprompt(basePart.ProximityPrompt)

            wait(15) -- 15 секунд как ты хотел
        end

        -- Возврат на исходную позицию
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			UnEquipAllTool()
			wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.823762893676758, 137.24998474121094, -11562.669921875)
        end
    end)
    
    -- Всегда сбрасываем флаг, даже при ошибке
    InProgresTreekOrTreet = false
    
    if not success then
        warn("Ошибка в findAndPrintBaseParts: " .. tostring(errorMsg))
    end
end

-- Бесконечный цикл с проверкой кулдауна
while true do
    findAndPrintBaseParts()
    wait(10) -- Проверяем каждые 10 секунд
end

--]]
