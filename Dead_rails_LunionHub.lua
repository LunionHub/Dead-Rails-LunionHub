--[[
    Lunion Hub - Dead Rails Script
    Спасибо за использование нашего хаба!
]]

-- Загружаем и извлекаем функцию из HEATWAVE
local heatwaveScript = loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-HEATWAVE-Autobond-243033"))()

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

-- Кнопка (КРАСНАЯ - выключена по умолчанию)
local AutoBondButton = Instance.new("TextButton")
AutoBondButton.Size = UDim2.new(0, 80, 0, 30)
AutoBondButton.Position = UDim2.new(1, -95, 0, 7)
AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
AutoBondButton.BorderSizePixel = 0
AutoBondButton.Text = "OFF"
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
StatusLabel.Text = "Нажмите ON для запуска"
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
StatusLabel.TextSize = 11
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.TextTransparency = 1
StatusLabel.Parent = MainFrame

-- АНИМАЦИЯ ПОЯВЛЕНИЯ (4 секунды)
task.wait(1)

-- Плавно расширяем фрейм
for i = 1, 20 do
    MainFrame.Size = UDim2.new(0, 300, 0, 60 + (i * 7))
    task.wait(0.1)
end

-- Показываем линию
for i = 1, 10 do
    Line.BackgroundTransparency = 1 - (i * 0.1)
    task.wait(0.05)
end

-- Показываем текст благодарности
for i = 1, 10 do
    ThanksText.TextTransparency = 1 - (i * 0.1)
    task.wait(0.05)
end

-- Показываем функционал
for i = 1, 10 do
    AutoBondFrame.BackgroundTransparency = 1 - (i * 0.1)
    AutoBondLabel.TextTransparency = 1 - (i * 0.1)
    AutoBondButton.TextTransparency = 1 - (i * 0.1)
    StatusLabel.TextTransparency = 1 - (i * 0.1)
    task.wait(0.05)
end

-- Переменные
local autoBondEnabled = false
local player = game.Players.LocalPlayer

-- Запускаем HEATWAVE скрипт в фоне
local heatwaveConnection
local function startHeatwave()
    pcall(function()
        -- Запускаем оригинальный скрипт если он еще не запущен
        if not heatwaveConnection then
            heatwaveScript = loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-HEATWAVE-Autobond-243033"))()
        end
    end)
end

-- Обработчик кнопки
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        StatusLabel.Text = "Статус: Активен | HEATWAVE метод"
        startHeatwave()
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
