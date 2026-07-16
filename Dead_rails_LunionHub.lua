--[[
    Lunion Hub - Визуал с анимацией ширмы
]]

-- Создаем GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui

-- Главный фрейм
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

-- Заголовок
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

-- Линия
local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -30, 0, 1)
Line.Position = UDim2.new(0, 15, 0, 60)
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Line.BorderSizePixel = 0
Line.BackgroundTransparency = 1
Line.Parent = MainFrame

-- Текст благодарности
local ThanksText = Instance.new("TextLabel")
ThanksText.Size = UDim2.new(1, -30, 0, 25)
ThanksText.Position = UDim2.new(0, 15, 0, 65)
ThanksText.BackgroundTransparency = 1
ThanksText.Text = "Спасибо за использование Lunion Hub!"
ThanksText.TextColor3 = Color3.fromRGB(180, 180, 200)
ThanksText.TextSize = 13
ThanksText.Font = Enum.Font.GothamMedium
ThanksText.TextXAlignment = Enum.TextXAlignment.Left
ThanksText.TextTransparency = 1
ThanksText.Parent = MainFrame

-- Фрейм для вкладок
local TabFrame = Instance.new("Frame")
TabFrame.Size = UDim2.new(1, -30, 0, 35)
TabFrame.Position = UDim2.new(0, 15, 0, 95)
TabFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TabFrame.BorderSizePixel = 0
TabFrame.BackgroundTransparency = 1
TabFrame.Parent = MainFrame

-- Вкладка Main
local MainTab = Instance.new("TextButton")
MainTab.Size = UDim2.new(0.5, -3, 0, 35)
MainTab.Position = UDim2.new(0, 0, 0, 0)
MainTab.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
MainTab.BorderSizePixel = 0
MainTab.Text = "Main"
MainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTab.TextSize = 16
MainTab.Font = Enum.Font.GothamBold
MainTab.TextTransparency = 1
MainTab.Parent = TabFrame

local MainTabCorner = Instance.new("UICorner")
MainTabCorner.CornerRadius = UDim.new(0, 6)
MainTabCorner.Parent = MainTab

-- Вкладка Visual
local VisualTab = Instance.new("TextButton")
VisualTab.Size = UDim2.new(0.5, -3, 0, 35)
VisualTab.Position = UDim2.new(0.5, 3, 0, 0)
VisualTab.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualTab.BorderSizePixel = 0
VisualTab.Text = "Visual"
VisualTab.TextColor3 = Color3.fromRGB(180, 180, 200)
VisualTab.TextSize = 16
VisualTab.Font = Enum.Font.GothamBold
VisualTab.TextTransparency = 1
VisualTab.Parent = TabFrame

local VisualTabCorner = Instance.new("UICorner")
VisualTabCorner.CornerRadius = UDim.new(0, 6)
VisualTabCorner.Parent = VisualTab

-- Ширма левая
local LeftCurtain = Instance.new("Frame")
LeftCurtain.Size = UDim2.new(0.5, 0, 1, -135)
LeftCurtain.Position = UDim2.new(0, 15, 0, 135)
LeftCurtain.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
LeftCurtain.BorderSizePixel = 0
LeftCurtain.ZIndex = 10
LeftCurtain.Parent = MainFrame

-- Ширма правая
local RightCurtain = Instance.new("Frame")
RightCurtain.Size = UDim2.new(0.5, 0, 1, -135)
RightCurtain.Position = UDim2.new(0.5, 15, 0, 135)
RightCurtain.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
RightCurtain.BorderSizePixel = 0
RightCurtain.ZIndex = 10
RightCurtain.Parent = MainFrame

-- Контент Main
local MainContent = Instance.new("Frame")
MainContent.Size = UDim2.new(1, -30, 0, 100)
MainContent.Position = UDim2.new(0, 15, 0, 135)
MainContent.BackgroundTransparency = 1
MainContent.Parent = MainFrame

local Function1Frame = Instance.new("Frame")
Function1Frame.Size = UDim2.new(1, 0, 0, 40)
Function1Frame.Position = UDim2.new(0, 0, 0, 0)
Function1Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Function1Frame.BorderSizePixel = 0
Function1Frame.Parent = MainContent

local Function1Corner = Instance.new("UICorner")
Function1Corner.CornerRadius = UDim.new(0, 8)
Function1Corner.Parent = Function1Frame

local Function1Label = Instance.new("TextLabel")
Function1Label.Size = UDim2.new(0.6, 0, 1, 0)
Function1Label.Position = UDim2.new(0, 15, 0, 0)
Function1Label.BackgroundTransparency = 1
Function1Label.Text = "Auto Bond"
Function1Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Function1Label.TextSize = 15
Function1Label.Font = Enum.Font.GothamMedium
Function1Label.TextXAlignment = Enum.TextXAlignment.Left
Function1Label.Parent = Function1Frame

local Function1Button = Instance.new("TextButton")
Function1Button.Size = UDim2.new(0, 70, 0, 28)
Function1Button.Position = UDim2.new(1, -80, 0.5, -14)
Function1Button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
Function1Button.BorderSizePixel = 0
Function1Button.Text = "OFF"
Function1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Function1Button.TextSize = 13
Function1Button.Font = Enum.Font.GothamBold
Function1Button.Parent = Function1Frame

local Function1ButtonCorner = Instance.new("UICorner")
Function1ButtonCorner.CornerRadius = UDim.new(0, 5)
Function1ButtonCorner.Parent = Function1Button

local Function2Frame = Instance.new("Frame")
Function2Frame.Size = UDim2.new(1, 0, 0, 40)
Function2Frame.Position = UDim2.new(0, 0, 0, 50)
Function2Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Function2Frame.BorderSizePixel = 0
Function2Frame.Parent = MainContent

local Function2Corner = Instance.new("UICorner")
Function2Corner.CornerRadius = UDim.new(0, 8)
Function2Corner.Parent = Function2Frame

local Function2Label = Instance.new("TextLabel")
Function2Label.Size = UDim2.new(0.6, 0, 1, 0)
Function2Label.Position = UDim2.new(0, 15, 0, 0)
Function2Label.BackgroundTransparency = 1
Function2Label.Text = "Auto Farm"
Function2Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Function2Label.TextSize = 15
Function2Label.Font = Enum.Font.GothamMedium
Function2Label.TextXAlignment = Enum.TextXAlignment.Left
Function2Label.Parent = Function2Frame

local Function2Button = Instance.new("TextButton")
Function2Button.Size = UDim2.new(0, 70, 0, 28)
Function2Button.Position = UDim2.new(1, -80, 0.5, -14)
Function2Button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
Function2Button.BorderSizePixel = 0
Function2Button.Text = "OFF"
Function2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Function2Button.TextSize = 13
Function2Button.Font = Enum.Font.GothamBold
Function2Button.Parent = Function2Frame

local Function2ButtonCorner = Instance.new("UICorner")
Function2ButtonCorner.CornerRadius = UDim.new(0, 5)
Function2ButtonCorner.Parent = Function2Button

-- Контент Visual
local VisualContent = Instance.new("Frame")
VisualContent.Size = UDim2.new(1, -30, 0, 100)
VisualContent.Position = UDim2.new(0, 15, 0, 135)
VisualContent.BackgroundTransparency = 1
VisualContent.Visible = false
VisualContent.Parent = MainFrame

local VisualFunction1 = Instance.new("Frame")
VisualFunction1.Size = UDim2.new(1, 0, 0, 40)
VisualFunction1.Position = UDim2.new(0, 0, 0, 0)
VisualFunction1.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualFunction1.BorderSizePixel = 0
VisualFunction1.Parent = VisualContent

local VisualCorner1 = Instance.new("UICorner")
VisualCorner1.CornerRadius = UDim.new(0, 8)
VisualCorner1.Parent = VisualFunction1

local VisualLabel1 = Instance.new("TextLabel")
VisualLabel1.Size = UDim2.new(1, -15, 0, 40)
VisualLabel1.Position = UDim2.new(0, 15, 0, 0)
VisualLabel1.BackgroundTransparency = 1
VisualLabel1.Text = "ESP"
VisualLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualLabel1.TextSize = 15
VisualLabel1.Font = Enum.Font.GothamMedium
VisualLabel1.TextXAlignment = Enum.TextXAlignment.Left
VisualLabel1.Parent = VisualFunction1

local VisualFunction2 = Instance.new("Frame")
VisualFunction2.Size = UDim2.new(1, 0, 0, 40)
VisualFunction2.Position = UDim2.new(0, 0, 0, 50)
VisualFunction2.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualFunction2.BorderSizePixel = 0
VisualFunction2.Parent = VisualContent

local VisualCorner2 = Instance.new("UICorner")
VisualCorner2.CornerRadius = UDim.new(0, 8)
VisualCorner2.Parent = VisualFunction2

local VisualLabel2 = Instance.new("TextLabel")
VisualLabel2.Size = UDim2.new(1, -15, 0, 40)
VisualLabel2.Position = UDim2.new(0, 15, 0, 0)
VisualLabel2.BackgroundTransparency = 1
VisualLabel2.Text = "Chams"
VisualLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualLabel2.TextSize = 15
VisualLabel2.Font = Enum.Font.GothamMedium
VisualLabel2.TextXAlignment = Enum.TextXAlignment.Left
VisualLabel2.Parent = VisualFunction2

-- Функция анимации ширмы
local isAnimating = false

local function switchTab(tabName)
    if isAnimating then return end
    isAnimating = true
    
    -- Закрываем ширмы (сходятся к центру)
    for i = 1, 15 do
        LeftCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
        RightCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
        RightCurtain.Position = UDim2.new(1 - (0.5 * (i/15)), 15, 0, 135)
        task.wait(0.02)
    end
    
    -- Меняем контент
    if tabName == "Main" then
        MainContent.Visible = true
        VisualContent.Visible = false
        MainTab.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
        MainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
        VisualTab.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
        VisualTab.TextColor3 = Color3.fromRGB(180, 180, 200)
    else
        MainContent.Visible = false
        VisualContent.Visible = true
        VisualTab.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
        VisualTab.TextColor3 = Color3.fromRGB(255, 255, 255)
        MainTab.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
        MainTab.TextColor3 = Color3.fromRGB(180, 180, 200)
    end
    
    task.wait(0.1)
    
    -- Открываем ширмы (расходятся от центра)
    for i = 15, 1, -1 do
        LeftCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
        RightCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
        RightCurtain.Position = UDim2.new(1 - (0.5 * (i/15)), 15, 0, 135)
        task.wait(0.02)
    end
    
    isAnimating = false
end

-- Обработчики вкладок
MainTab.MouseButton1Click:Connect(function()
    if MainContent.Visible then return end
    switchTab("Main")
end)

VisualTab.MouseButton1Click:Connect(function()
    if VisualContent.Visible then return end
    switchTab("Visual")
end)

-- АНИМАЦИЯ ПОЯВЛЕНИЯ (4 секунды)
task.wait(1)

for i = 1, 20 do
    MainFrame.Size = UDim2.new(0, 300, 0, 60 + (i * 10))
    task.wait(0.15)
end

for i = 1, 10 do
    Line.BackgroundTransparency = 1 - (i * 0.1)
    task.wait(0.08)
end

for i = 1, 10 do
    ThanksText.TextTransparency = 1 - (i * 0.1)
    task.wait(0.08)
end

for i = 1, 10 do
    TabFrame.BackgroundTransparency = 1 - (i * 0.1)
    MainTab.TextTransparency = 1 - (i * 0.1)
    VisualTab.TextTransparency = 1 - (i * 0.1)
    task.wait(0.08)
end

-- Убираем ширмы при первом запуске
for i = 15, 1, -1 do
    LeftCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
    RightCurtain.Size = UDim2.new(0.5 * (i/15), 0, 1, -135)
    RightCurtain.Position = UDim2.new(1 - (0.5 * (i/15)), 15, 0, 135)
    task.wait(0.02)
end
LeftCurtain.Size = UDim2.new(0, 0, 1, -135)
RightCurtain.Size = UDim2.new(0, 0, 1, -135)

-- Перетаскивание
local UIS = game:GetService("UserInputService")
local dragging, start, pos

MainFrame.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        start = i.Position
        pos = MainFrame.Position
    end
end)

MainFrame.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(i)
    if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
        local d = i.Position - start
        MainFrame.Position = UDim2.new(pos.X.Scale, pos.X.Offset + d.X, pos.Y.Scale, pos.Y.Offset + d.Y)
    end
end)
