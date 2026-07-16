--[[
    Lunion Hub - Dead Rails Script
    Отредактированная версия HEATWAVE Autobond
    Спасибо за использование нашего хаба!
]]

-- Создаем GUI Lunion Hub
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Главный фрейм
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 380, 0, 220)
MainFrame.Position = UDim2.new(0.5, -190, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Закругленные углы
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Заголовок
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -30, 0, 40)
Title.Position = UDim2.new(0, 15, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "Lunion Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 28
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

-- Линия
local Line = Instance.new("Frame")
Line.Size = UDim2.new(1, -30, 0, 1)
Line.Position = UDim2.new(0, 15, 0, 55)
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Line.BorderSizePixel = 0
Line.Parent = MainFrame

-- Текст благодарности
local ThanksText = Instance.new("TextLabel")
ThanksText.Size = UDim2.new(1, -30, 0, 30)
ThanksText.Position = UDim2.new(0, 15, 0, 60)
ThanksText.BackgroundTransparency = 1
ThanksText.Text = "Спасибо за использование Lunion Hub! ❤️"
ThanksText.TextColor3 = Color3.fromRGB(180, 180, 200)
ThanksText.TextSize = 13
ThanksText.Font = Enum.Font.GothamMedium
ThanksText.TextXAlignment = Enum.TextXAlignment.Left
ThanksText.Parent = MainFrame

-- Auto Bond фрейм
local AutoBondFrame = Instance.new("Frame")
AutoBondFrame.Size = UDim2.new(1, -30, 0, 45)
AutoBondFrame.Position = UDim2.new(0, 15, 0, 100)
AutoBondFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
AutoBondFrame.BorderSizePixel = 0
AutoBondFrame.Parent = MainFrame

local AutoBondCorner = Instance.new("UICorner")
AutoBondCorner.CornerRadius = UDim.new(0, 8)
AutoBondCorner.Parent = AutoBondFrame

-- Текст Auto Bond
local AutoBondLabel = Instance.new("TextLabel")
AutoBondLabel.Size = UDim2.new(0, 150, 0, 45)
AutoBondLabel.Position = UDim2.new(0, 15, 0, 0)
AutoBondLabel.BackgroundTransparency = 1
AutoBondLabel.Text = "Auto Bond"
AutoBondLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondLabel.TextSize = 18
AutoBondLabel.Font = Enum.Font.GothamMedium
AutoBondLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoBondLabel.Parent = AutoBondFrame

-- Кнопка
local AutoBondButton = Instance.new("TextButton")
AutoBondButton.Size = UDim2.new(0, 80, 0, 30)
AutoBondButton.Position = UDim2.new(1, -95, 0, 7)
AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
AutoBondButton.BorderSizePixel = 0
AutoBondButton.Text = "ON"
AutoBondButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondButton.TextSize = 14
AutoBondButton.Font = Enum.Font.GothamBold
AutoBondButton.Parent = AutoBondFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = AutoBondButton

-- Статус
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -30, 0, 20)
StatusLabel.Position = UDim2.new(0, 15, 0, 155)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Статус: Запущен | HEATWAVE метод"
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
StatusLabel.TextSize = 11
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.Parent = MainFrame

-- Водяной знак
local Watermark = Instance.new("TextLabel")
Watermark.Size = UDim2.new(0, 200, 0, 20)
Watermark.Position = UDim2.new(1, -210, 1, -22)
Watermark.BackgroundTransparency = 1
Watermark.Text = "Lunion Hub | Dead Rails"
Watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
Watermark.TextTransparency = 0.3
Watermark.TextSize = 11
Watermark.Font = Enum.Font.GothamMedium
Watermark.TextXAlignment = Enum.TextXAlignment.Right
Watermark.Parent = MainFrame

-- Переменная состояния
local autoBondEnabled = true

-- Функция Auto Bond из HEATWAVE (адаптированная)
local function autoBondFunction()
    task.spawn(function()
        while autoBondEnabled do
            pcall(function()
                local player = game.Players.LocalPlayer
                local character = player.Character
                if not character then return end
                
                local rootPart = character:FindFirstChild("HumanoidRootPart")
                if not rootPart then return end
                
                -- Сбор бондов
                for _, item in ipairs(workspace:GetDescendants()) do
                    if item:IsA("Part") or item:IsA("MeshPart") then
                        local itemName = item.Name:lower()
                        if itemName:find("bond") or itemName:find("money") or itemName:find("cash") or itemName:find("coin") then
                            if item:IsDescendantOf(workspace) and not item:IsDescendantOf(character) then
                                pcall(function()
                                    item.CFrame = rootPart.CFrame * CFrame.new(0, 0, -3)
                                    item.Anchored = false
                                    item.CanCollide = false
                                    
                                    firetouchinterest(rootPart, item, 0)
                                    task.wait(0.05)
                                    firetouchinterest(rootPart, item, 1)
                                end)
                            end
                        end
                    end
                    
                    -- Сбор через ProximityPrompt
                    if item:IsA("ProximityPrompt") then
                        pcall(function()
                            fireproximityprompt(item)
                        end)
                    end
                end
            end)
            task.wait(0.5)
        end
    end)
end

-- Запускаем Auto Bond
autoBondFunction()

-- Обработчик кнопки
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        StatusLabel.Text = "Статус: Запущен | HEATWAVE метод"
        autoBondFunction()
    else
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        AutoBondButton.Text = "OFF"
        StatusLabel.Text = "Статус: Остановлен"
    end
end)

-- Перетаскивание GUI
local UserInputService = game:GetService("UserInputService")
local gui = MainFrame
local dragging, dragInput, dragStart, startPos

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
