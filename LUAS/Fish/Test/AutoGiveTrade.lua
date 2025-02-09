-- Ник игрока, которому отправляем обмен
local targetPlayerName = "13miron2013o"

-- Функция для определения выбранной рыбы
local function getSelectedFish()
    local localPlayer = game.Players.LocalPlayer

    -- Проверяем, существует ли Backpack у игрока
    if localPlayer and localPlayer:FindFirstChild("Backpack") then
        local backpack = localPlayer.Backpack

        -- Проверяем, есть ли инструмент (предмет) в руках или выбранный в Backpack
        if localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool") then
            return localPlayer.Character:FindFirstChildOfClass("Tool").Name -- Предмет в руках
        elseif backpack:FindFirstChildOfClass("Tool") then
            return backpack:FindFirstChildOfClass("Tool").Name -- Первый предмет в рюкзаке
        end
    end

    -- Если предмет не выбран, возвращаем значение по умолчанию
    warn("Не удалось определить выбранный предмет в инвентаре, используется значение по умолчанию.")
    return "DefaultFish" -- Замените на значение по умолчанию, если необходимо
end

-- Функция для отправки обмена
local function sendTrade()
    -- Определяем выбранную рыбу
    local selectedFish = getSelectedFish()
    if not selectedFish then
        warn("Не удалось определить выбранную рыбу.")
        return
    end

    -- Путь к удалённому событию offer
    local offerEventPath = "workspace.InvokerPlayers." .. selectedFish .. ".offer"
    local offerEvent = game:GetService("Workspace"):FindFirstChild("InvokerPlayers")
        and game.Workspace.InvokerPlayers:FindFirstChild(selectedFish)
        and game.Workspace.InvokerPlayers[selectedFish]:FindFirstChild("offer")

    -- Проверяем, существует ли RemoteEvent
    if not offerEvent or not offerEvent:IsA("RemoteEvent") then
        warn("Удалённое событие offer не найдено для выбранной рыбы: " .. selectedFish)
        return
    end

    -- Проверяем, существует ли игрок с указанным ником
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if not targetPlayer then
        warn("Игрок с ником " .. targetPlayerName .. " не найден.")
        return
    end

    -- Отправляем обмен через RemoteEvent
    offerEvent:FireServer(targetPlayer)
    print("Трейд успешно отправлен игроку " .. targetPlayerName .. " с выбранной рыбой: " .. selectedFish)
end

-- Вызываем функцию отправки трейда
sendTrade()
