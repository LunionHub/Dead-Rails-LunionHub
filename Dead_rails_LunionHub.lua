--[[
    Lunion Hub - Компактный визуал
]]

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Создаем GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui

-- Главный фрейм
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 260, 0, 180)
MainFrame.Position = UDim2.new(0.5, -130, 0.5, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Active = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Заголовок
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "Lunion Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.Parent = MainFrame

-- Линия
local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -24, 0, 1)
Line.Position = UDim2.new(0, 12, 0, 50)
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Line.BorderSizePixel = 0
Line.Parent = MainFrame

-- Текст благодарности
local ThanksText = Instance.new("TextLabel")
ThanksText.Size = UDim2.new(1, -24, 0, 20)
ThanksText.Position = UDim2.new(0, 12, 0, 54)
ThanksText.BackgroundTransparency = 1
ThanksText.Text = "Спасибо за использование Lunion Hub!"
ThanksText.TextColor3 = Color3.fromRGB(180, 180, 200)
ThanksText.TextSize = 11
ThanksText.Font = Enum.Font.GothamMedium
ThanksText.TextXAlignment = Enum.TextXAlignment.Left
ThanksText.Parent = MainFrame

-- Фрейм для вкладок
local TabFrame = Instance.new("Frame")
TabFrame.Size = UDim2.new(1, -24, 0, 28)
TabFrame.Position = UDim2.new(0, 12, 0, 78)
TabFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TabFrame.BorderSizePixel = 0
TabFrame.Parent = MainFrame

-- Вкладка Main
local MainTab = Instance.new("TextButton")
MainTab.Size = UDim2.new(0.5, -2, 0, 28)
MainTab.Position = UDim2.new(0, 0, 0, 0)
MainTab.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
MainTab.BorderSizePixel = 0
MainTab.Text = "Main"
MainTab.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTab.TextSize = 13
MainTab.Font = Enum.Font.GothamBold
MainTab.Parent = TabFrame

local MainTabCorner = Instance.new("UICorner")
MainTabCorner.CornerRadius = UDim.new(0, 5)
MainTabCorner.Parent = MainTab

-- Вкладка Visual
local VisualTab = Instance.new("TextButton")
VisualTab.Size = UDim2.new(0.5, -2, 0, 28)
VisualTab.Position = UDim2.new(0.5, 2, 0, 0)
VisualTab.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualTab.BorderSizePixel = 0
VisualTab.Text = "Visual"
VisualTab.TextColor3 = Color3.fromRGB(180, 180, 200)
VisualTab.TextSize = 13
VisualTab.Font = Enum.Font.GothamBold
VisualTab.Parent = TabFrame

local VisualTabCorner = Instance.new("UICorner")
VisualTabCorner.CornerRadius = UDim.new(0, 5)
VisualTabCorner.Parent = VisualTab

-- Ширма левая
local LeftCurtain = Instance.new("Frame")
LeftCurtain.Size = UDim2.new(0, 0, 1, -110)
LeftCurtain.Position = UDim2.new(0, 12, 0, 110)
LeftCurtain.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
LeftCurtain.BorderSizePixel = 0
LeftCurtain.ZIndex = 10
LeftCurtain.Parent = MainFrame

-- Ширма правая
local RightCurtain = Instance.new("Frame")
RightCurtain.Size = UDim2.new(0, 0, 1, -110)
RightCurtain.Position = UDim2.new(1, 12, 0, 110)
RightCurtain.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
RightCurtain.BorderSizePixel = 0
RightCurtain.ZIndex = 10
RightCurtain.Parent = MainFrame

-- Контент Main
local MainContent = Instance.new("Frame")
MainContent.Size = UDim2.new(1, -24, 0, 70)
MainContent.Position = UDim2.new(0, 12, 0, 110)
MainContent.BackgroundTransparency = 1
MainContent.Parent = MainFrame

-- Функция 1
local Function1Frame = Instance.new("Frame")
Function1Frame.Size = UDim2.new(1, 0, 0, 30)
Function1Frame.Position = UDim2.new(0, 0, 0, 0)
Function1Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Function1Frame.BorderSizePixel = 0
Function1Frame.Parent = MainContent

local Function1Corner = Instance.new("UICorner")
Function1Corner.CornerRadius = UDim.new(0, 6)
Function1Corner.Parent = Function1Frame

local Function1Label = Instance.new("TextLabel")
Function1Label.Size = UDim2.new(0.6, 0, 1, 0)
Function1Label.Position = UDim2.new(0, 12, 0, 0)
Function1Label.BackgroundTransparency = 1
Function1Label.Text = "Auto Bond"
Function1Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Function1Label.TextSize = 13
Function1Label.Font = Enum.Font.GothamMedium
Function1Label.TextXAlignment = Enum.TextXAlignment.Left
Function1Label.Parent = Function1Frame

local Function1Button = Instance.new("TextButton")
Function1Button.Size = UDim2.new(0, 56, 0, 22)
Function1Button.Position = UDim2.new(1, -64, 0.5, -11)
Function1Button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
Function1Button.BorderSizePixel = 0
Function1Button.Text = "OFF"
Function1Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Function1Button.TextSize = 11
Function1Button.Font = Enum.Font.GothamBold
Function1Button.Parent = Function1Frame

local Function1ButtonCorner = Instance.new("UICorner")
Function1ButtonCorner.CornerRadius = UDim.new(0, 4)
Function1ButtonCorner.Parent = Function1Button

-- Функция 2
local Function2Frame = Instance.new("Frame")
Function2Frame.Size = UDim2.new(1, 0, 0, 30)
Function2Frame.Position = UDim2.new(0, 0, 0, 36)
Function2Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Function2Frame.BorderSizePixel = 0
Function2Frame.Parent = MainContent

local Function2Corner = Instance.new("UICorner")
Function2Corner.CornerRadius = UDim.new(0, 6)
Function2Corner.Parent = Function2Frame

local Function2Label = Instance.new("TextLabel")
Function2Label.Size = UDim2.new(0.6, 0, 1, 0)
Function2Label.Position = UDim2.new(0, 12, 0, 0)
Function2Label.BackgroundTransparency = 1
Function2Label.Text = "Auto Farm"
Function2Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Function2Label.TextSize = 13
Function2Label.Font = Enum.Font.GothamMedium
Function2Label.TextXAlignment = Enum.TextXAlignment.Left
Function2Label.Parent = Function2Frame

local Function2Button = Instance.new("TextButton")
Function2Button.Size = UDim2.new(0, 56, 0, 22)
Function2Button.Position = UDim2.new(1, -64, 0.5, -11)
Function2Button.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
Function2Button.BorderSizePixel = 0
Function2Button.Text = "OFF"
Function2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Function2Button.TextSize = 11
Function2Button.Font = Enum.Font.GothamBold
Function2Button.Parent = Function2Frame

local Function2ButtonCorner = Instance.new("UICorner")
Function2ButtonCorner.CornerRadius = UDim.new(0, 4)
Function2ButtonCorner.Parent = Function2Button

-- Контент Visual
local VisualContent = Instance.new("Frame")
VisualContent.Size = UDim2.new(1, -24, 0, 70)
VisualContent.Position = UDim2.new(0, 12, 0, 110)
VisualContent.BackgroundTransparency = 1
VisualContent.Visible = false
VisualContent.Parent = MainFrame

local VisualFunction1 = Instance.new("Frame")
VisualFunction1.Size = UDim2.new(1, 0, 0, 30)
VisualFunction1.Position = UDim2.new(0, 0, 0, 0)
VisualFunction1.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualFunction1.BorderSizePixel = 0
VisualFunction1.Parent = VisualContent

local VisualCorner1 = Instance.new("UICorner")
VisualCorner1.CornerRadius = UDim.new(0, 6)
VisualCorner1.Parent = VisualFunction1

local VisualLabel1 = Instance.new("TextLabel")
VisualLabel1.Size = UDim2.new(1, -12, 0, 30)
VisualLabel1.Position = UDim2.new(0, 12, 0, 0)
VisualLabel1.BackgroundTransparency = 1
VisualLabel1.Text = "ESP"
VisualLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualLabel1.TextSize = 13
VisualLabel1.Font = Enum.Font.GothamMedium
VisualLabel1.TextXAlignment = Enum.TextXAlignment.Left
VisualLabel1.Parent = VisualFunction1

local VisualFunction2 = Instance.new("Frame")
VisualFunction2.Size = UDim2.new(1, 0, 0, 30)
VisualFunction2.Position = UDim2.new(0, 0, 0, 36)
VisualFunction2.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
VisualFunction2.BorderSizePixel = 0
VisualFunction2.Parent = VisualContent

local VisualCorner2 = Instance.new("UICorner")
VisualCorner2.CornerRadius = UDim.new(0, 6)
VisualCorner2.Parent = VisualFunction2

local VisualLabel2 = Instance.new("TextLabel")
VisualLabel2.Size = UDim2.new(1, -12, 0, 30)
VisualLabel2.Position = UDim2.new(0, 12, 0, 0)
VisualLabel2.BackgroundTransparency = 1
VisualLabel2.Text = "Chams"
VisualLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualLabel2.TextSize = 13
VisualLabel2.Font = Enum.Font.GothamMedium
VisualLabel2.TextXAlignment = Enum.TextXAlignment.Left
VisualLabel2.Parent = VisualFunction2

-- Анимация ширмы
local isAnimating = false

local function switchTab(tabName)
    if isAnimating then return end
    isAnimating = true
    
    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
    
    -- Закрываем ширмы
    local leftClose = TweenService:Create(LeftCurtain, tweenInfo, {Size = UDim2.new(0.5, 0, 1, -110)})
    local rightClose = TweenService:Create(RightCurtain, tweenInfo, {Size = UDim2.new(0.5, 0, 1, -110), Position = UDim2.new(0.5, 12, 0, 110)})
    
    leftClose:Play()
    rightClose:Play()
    leftClose.Completed:Wait()
    
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
    
    task.wait(0.05)
    
    -- Открываем ширмы
    local leftOpen = TweenService:Create(LeftCurtain, tweenInfo, {Size = UDim2.new(0, 0, 1, -110)})
    local rightOpen = TweenService:Create(RightCurtain, tweenInfo, {Size = UDim2.new(0, 0, 1, -110), Position = UDim2.new(1, 12, 0, 110)})
    
    leftOpen:Play()
    rightOpen:Play()
    rightOpen.Completed:Wait()
    
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

-- Перетаскивание (за заголовок)
local dragging, dragStart, startPos

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
