--[[
    Lunion Hub - Dead Rails Script
    Полный скрипт с анимацией и сбором бондов
    Спасибо за использование нашего хаба!
]]

-- Создаем GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui

-- Главный фрейм (изначально маленький)
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 60)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -30)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Заголовок (сразу виден)
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 60)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Lunion Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 32
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.Parent = MainFrame

-- Линия (скрыта)
local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -30, 0, 1)
Line.Position = UDim2.new(0, 15, 0, 60)
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Line.BorderSizePixel = 0
Line.BackgroundTransparency = 1
Line.Parent = MainFrame

-- Текст благодарности (скрыт)
local ThanksText = Instance.new("TextLabel")
ThanksText.Size = UDim2.new(1, -30, 0, 30)
ThanksText.Position = UDim2.new(0, 15, 0, 65)
ThanksText.BackgroundTransparency = 1
ThanksText.Text = "Спасибо за использование Lunion Hub!"
ThanksText.TextColor3 = Color3.fromRGB(180, 180, 200)
ThanksText.TextSize = 13
ThanksText.Font = Enum.Font.GothamMedium
ThanksText.TextXAlignment = Enum.TextXAlignment.Left
ThanksText.TextTransparency = 1
ThanksText.Parent = MainFrame

-- Предупреждение (скрыто)
local WarningText = Instance.new("TextLabel")
WarningText.Size = UDim2.new(1, -30, 0, 40)
WarningText.Position = UDim2.new(0, 15, 0, 100)
WarningText.BackgroundTransparency = 1
WarningText.Text = "⚠️ Запустите игру для использования!"
WarningText.TextColor3 = Color3.fromRGB(255, 200, 50)
WarningText.TextSize = 14
WarningText.Font = Enum.Font.GothamBold
WarningText.TextTransparency = 1
WarningText.Parent = MainFrame

-- Auto Bond фрейм (скрыт)
local AutoBondFrame = Instance.new("Frame")
AutoBondFrame.Size = UDim2.new(1, -30, 0, 45)
AutoBondFrame.Position = UDim2.new(0, 15, 0, 100)
AutoBondFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
AutoBondFrame.BorderSizePixel = 0
AutoBondFrame.BackgroundTransparency = 1
AutoBondFrame.Parent = MainFrame

local AutoBondCorner = Instance.new("UICorner")
AutoBondCorner.CornerRadius = UDim.new(0, 8)
AutoBondCorner.Parent = AutoBondFrame

local AutoBondLabel = Instance.new("TextLabel")
AutoBondLabel.Size = UDim2.new(0, 150, 0, 45)
AutoBondLabel.Position = UDim2.new(0, 15, 0, 0)
AutoBondLabel.BackgroundTransparency = 1
AutoBondLabel.Text = "Auto Bond"
AutoBondLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondLabel.TextSize = 18
AutoBondLabel.Font = Enum.Font.GothamMedium
AutoBondLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoBondLabel.TextTransparency = 1
AutoBondLabel.Parent = AutoBondFrame

local AutoBondButton = Instance.new("TextButton")
AutoBondButton.Size = UDim2.new(0, 80, 0, 30)
AutoBondButton.Position = UDim2.new(1, -95, 0, 7)
AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
AutoBondButton.BorderSizePixel = 0
AutoBondButton.Text = "ON"
AutoBondButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondButton.TextSize = 14
AutoBondButton.Font = Enum.Font.GothamBold
AutoBondButton.TextTransparency = 1
AutoBondButton.Parent = AutoBondFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = AutoBondButton

-- Статус (скрыт)
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -30, 0, 20)
StatusLabel.Position = UDim2.new(0, 15, 0, 150)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Статус: Готов"
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
StatusLabel.TextSize = 11
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.TextTransparency = 1
StatusLabel.Parent = MainFrame

-- АНИМАЦИЯ ПОЯВЛЕНИЯ
task.wait(1)

-- Плавно расширяем фрейм
for i = 1, 10 do
    MainFrame.Size = UDim2.new(0, 300, 0, 60 + (i * 14))
    task.wait(0.05)
end

-- Показываем линию
for i = 1, 10 do
    Line.BackgroundTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

-- Показываем текст благодарности
for i = 1, 10 do
    ThanksText.TextTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

-- Показываем предупреждение/функционал
for i = 1, 10 do
    WarningText.TextTransparency = 1 - (i * 0.1)
    AutoBondFrame.BackgroundTransparency = 1 - (i * 0.1)
    AutoBondLabel.TextTransparency = 1 - (i * 0.1)
    AutoBondButton.TextTransparency = 1 - (i * 0.1)
    StatusLabel.TextTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

-- Переменные для автосбора
local autoBondEnabled = true
local player = game.Players.LocalPlayer
local bondsCollected = 0

-- Функция сбора бондов (исправленная - только в игре)
local function collectBonds()
    if not game:IsLoaded() then return end
    
    local character = player.Character
    if not character then return end
    
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    
    -- Ищем только физические объекты в workspace (не GUI)
    for _, item in ipairs(workspace:GetDescendants()) do
        pcall(function()
            -- Проверяем что это физический объект
            if (item:IsA("Part") or item:IsA("MeshPart")) and item:IsDescendantOf(workspace) then
                -- Проверяем что это не часть персонажа
                if not item:IsDescendantOf(character) then
                    local name = item.Name:lower()
                    -- Ищем бонды по названию
                    if name:find("bond") or name:find("money") or name:find("cash") then
                        -- Телепортируем к игроку
                        item.CFrame = rootPart.CFrame + Vector3.new(0, 2, 0)
                        item.Anchored = false
                        item.CanCollide = false
                        
                        -- Пробуем подобрать
                        firetouchinterest(rootPart, item, 0)
                        task.wait(0.05)
                        firetouchinterest(rootPart, item, 1)
                        
                        bondsCollected = bondsCollected + 1
                        StatusLabel.Text = "Собрано бондов: " .. bondsCollected
                    end
                end
            end
        end)
    end
end

-- Цикл сбора
task.spawn(function()
    while true do
        if autoBondEnabled then
            pcall(collectBonds)
        end
        task.wait(0.3)
    end
end)

-- Обработчик кнопки
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        StatusLabel.Text = "Статус: Активен | Собрано: " .. bondsCollected
    else
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        AutoBondButton.Text = "OFF"
        StatusLabel.Text = "Статус: Остановлен"
    end
end)

-- Перетаскивание GUI
local UserInputService = game:GetService("UserInputService")
local dragging, dragStart, startPos

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

MainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
