local Players = game:GetService('Players')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = Players.LocalPlayer
local layerCollector = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("GuiService")

local isprogress = true

local Events = nil
local Values = nil

local isCasted = nil
local Lure = nil


---------------------------------Config------------------------------------

local AutoShake = true
local AutoRel = true
local AutoCast = true
local AutoEqipRod = true
local AlwysPerfect = false



-------------------------------- cast block --------------------------------
local finalCastDistance = nil
local CastRandomValue = nil

----------------------------------Config
local RandomazeCastDistance = true
local randomazeCastInArrey = true


local CustomCastDistance = 50 -- 0/100

local firstNumberCastInArrey = 90 -- 0/100
local finalNumberCastInArrey = 100 -- 0/100


if RandomazeCastDistance then
    
    if RandomazeCastDistance and randomazeCastInArrey then

        CastRandomValue = Random.new():NextNumber(firstNumberCastInArrey, finalNumberCastInArrey)
        finalCastDistance = CastRandomValue

        else
            CastRandomValue = Random.new():NextNumber(0, 100)
            finalCastDistance = CastRandomValue
    end
    
    else 
        finalCastDistance = CustomCastDistance
end

print("Distance: ".. finalCastDistance)

---------------------------------------------------------------------------------




----------------------------------Shake Block------------------------------------

local finalShakeDelayTime = nil
local ShakeRandomValue = nil

---------------------------------------------------------------------------------

local RandomazeShakeDelayTime = true


local CustomShakeDelayTime = 0.0 --on ms

local firstNumberShakeInArrey = 0.0 -- 0/inf on ms
local finalNumberShakeInArrey = 1.0 -- 0/inf on ms

local CenterShake = false
local HideningShake = true

local ShakeMode = nil; ShakeMode = "Click" -- Click/Enter

----------------------------------------------------------------------------

local AutoActivetePromo = false


-- Функция для поиска удочки в рюкзаке и её экипировки
local function findAndEquipRod()
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for _, item in ipairs(Backpack:GetChildren()) do
            if item:IsA('Tool') and item.Name:lower():find('rod') then
                item.Parent = LocalPlayer.Character -- Экипируем удочку
                return item
            end
        end
    end
    return nil
end

-- Проверяем, экипирована ли удочка
local Rod = LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
if not Rod or not Rod.Name:lower():find('rod') then
    if AutoEqipRod then
        Rod = findAndEquipRod() -- Пытаемся найти и экипировать удочку из рюкзака
    else
        print("AutoEqipRod: выключен")
        -- Если AutoEqipRod выключен, ждем, пока игрок экипирует удочку
        repeat
            task.wait(1) -- Проверяем раз в секунду
            Rod = LocalPlayer.Character:FindFirstChildWhichIsA('Tool')
        until Rod and Rod.Name:lower():find('rod')
        print("Удочка экипирована.")
    end
end

-- Если удочка не найдена после ожидания, завершаем скрипт
if not Rod then
    warn("Удочка не найдена!")
    return
end

Events = Rod:WaitForChild("events")
Values = Rod.values

isCasted = Values.casted
Lure = Values.lure

if AutoCast then
    if isCasted.Value == true then
        Events:WaitForChild("reset"):FireServer()
        task.wait(1)
        Events:WaitForChild("cast"):FireServer(finalCastDistance)
    else
        Events:WaitForChild("cast"):FireServer(finalCastDistance)
    end
end


local function InCenterShake()
    local SafeZone = game:GetService("Players").LocalPlayer.PlayerGui.shakeui.safezone
    local Connect = SafeZone:WaitForChild("connect", 1)

    if Connect then
        Connect.Enabled = false -- this script locks the size of the safezone, so we disable it.
    end
    
    SafeZone.Size = UDim2.fromOffset(0, 0)
    SafeZone.Position = UDim2.fromScale(0.5, 0.5)
    SafeZone.AnchorPoint = Vector2.new(0.5, 0.5)
end

local function HideShake()
    local button = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("shakeui"):WaitForChild("safezone"):WaitForChild("button")
    
    if button then
        button.BackgroundTransparency = 1
        button.Image = 0

        -- Удаление дочернего объекта только если он существует
        local title = button:FindFirstChild("title")
        if title then
            title:Destroy()
        end
    end
end


LocalPlayer.PlayerGui.DescendantAdded:Connect(function(Descendant)
    if not isprogress then return end -- Проверяем isprogress перед выполнением кода

    if Descendant.Name == 'button' and Descendant.Parent.Name == 'safezone' then
        if HideningShake then HideShake() end
        if CenterShake then InCenterShake() end

        if AutoShake then
            local finalShakeDelayTime
            if RandomazeShakeDelayTime then
                finalShakeDelayTime = Random.new():NextNumber(firstNumberShakeInArrey, finalNumberShakeInArrey)
            else
                finalShakeDelayTime = CustomShakeDelayTime
            end
            
            if ShakeMode == "Click" then
                task.wait(finalShakeDelayTime / 100)
                local button = LocalPlayer.PlayerGui:FindFirstChild("shakeui")
                    and LocalPlayer.PlayerGui.shakeui:FindFirstChild("safezone")
                    and LocalPlayer.PlayerGui.shakeui.safezone:FindFirstChild("button")

                if button and button:IsA("GuiButton") and button.Visible then
                    local ButtonPosition, ButtonSize = button.AbsolutePosition, button.AbsoluteSize
                    VirtualInputManager:SendMouseButtonEvent(
                        ButtonPosition.X + (ButtonSize.X / 2), 
                        ButtonPosition.Y + (ButtonSize.Y / 2), 
                        Enum.UserInputType.MouseButton1.Value, 
                        true, game, 0
                    )
                    VirtualInputManager:SendMouseButtonEvent(
                        ButtonPosition.X + (ButtonSize.X / 2), 
                        ButtonPosition.Y + (ButtonSize.Y / 2), 
                        Enum.UserInputType.MouseButton1.Value, 
                        false, game, 0
                    )
                    print("Delay: " .. finalShakeDelayTime)
                end

            elseif ShakeMode == "Enter" then
                task.wait(finalShakeDelayTime / 100)
                local button = LocalPlayer.PlayerGui:FindFirstChild("shakeui")
                    and LocalPlayer.PlayerGui.shakeui:FindFirstChild("safezone")
                    and LocalPlayer.PlayerGui.shakeui.safezone:FindFirstChild("button")

                if button then
                    button.Selectable = true
                    GuiService.SelectedObject = button
                    GuiService:GetPropertyChangedSignal("PreferredTransparency"):Connect(setBackgroundTransparency)
                    button.BackgroundTransparency = 1

                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)

                    wait(0)
                    GuiService.SelectedObject = nil
                    button.Selectable = false
                end
            end
        end

    elseif Descendant.Name == 'playerbar' and Descendant.Parent.Name == 'bar' then
        if AutoRel then
            local ReelScript = LocalPlayer.PlayerGui:FindFirstChild("reel")
                and LocalPlayer.PlayerGui.reel:FindFirstChild("bar")
                and LocalPlayer.PlayerGui.reel.bar:FindFirstChild("reel")

            if ReelScript and ReelScript:IsA("LocalScript") and ReelScript.Enabled then
                Descendant:GetPropertyChangedSignal('Position'):Wait()
                wait(0.1)
                ReplicatedStorage.events.reelfinished:FireServer(100, AlwysPerfect)
            end
        end
        isprogress = false
    end
end)

local function ActivetePromo() 
    local runCodeEvent = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("runcode")

    local argsList = {
        {"CARBON"},
        {"ATLANTEANSTORM"},
        {"SORRYGUYS"},
        {"GOLDENTIDE"},
        {"NewYear"},
        {"NorthernExpedition"},
        {"RFG"},
    }

    for _, args in ipairs(argsList) do
        runCodeEvent:FireServer(unpack(args))
    end
end

if AutoActivetePromo then
    ActivetePromo()
end

--Rejoin game:GetService("TeleportService"):Teleport(game.PlaceId, player) 

-- Set FPS cap
--setfpscap(900)

--[[
-- Disable chat if the option is enabled in config
if config.disableChat then
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
end
]]


