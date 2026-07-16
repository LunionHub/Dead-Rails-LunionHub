--[[
    Lunion Hub - Dead Rails Script
    Спасибо за использование нашего хаба!
    Адаптировано с рабочими методами из HEATWAVE
]]

-- Создаем GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Главный фрейм с закругленными углами
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 400, 0, 350)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- Закругленные углы через UICorner
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Тень для фрейма
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Size = UDim2.new(1, 20, 1, 20)
Shadow.Position = UDim2.new(0, -10, 0, -10)
Shadow.BackgroundTransparency = 1
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 49, 49)
Shadow.ZIndex = 0
Shadow.Parent = MainFrame

-- Заголовок "Lunion Hub"
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, -20, 0, 40)
Title.Position = UDim2.new(0, 10, 0, 15)
Title.BackgroundTransparency = 1
Title.Text = "Lunion Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 28
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

-- Линия под заголовком
local Line = Instance.new("Frame")
Line.Name = "Line"
Line.Size = UDim2.new(1, -20, 0, 1)
Line.Position = UDim2.new(0, 10, 0, 60)
Line.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
Line.BorderSizePixel = 0
Line.Parent = MainFrame

-- Текст благодарности
local ThanksText = Instance.new("TextLabel")
ThanksText.Name = "ThanksText"
ThanksText.Size = UDim2.new(1, -20, 0, 45)
ThanksText.Position = UDim2.new(0, 10, 0, 70)
ThanksText.BackgroundTransparency = 1
ThanksText.Text = "Спасибо за использование скрипта нашего хаба!\nLunion Hub всегда на высоте! 🚀"
ThanksText.TextColor3 = Color3.fromRGB(180, 180, 200)
ThanksText.TextSize = 14
ThanksText.Font = Enum.Font.GothamMedium
ThanksText.TextXAlignment = Enum.TextXAlignment.Left
ThanksText.TextYAlignment = Enum.TextYAlignment.Center
ThanksText.TextWrapped = true
ThanksText.Parent = MainFrame

-- Разделительная линия
local Divider = Instance.new("Frame")
Divider.Name = "Divider"
Divider.Size = UDim2.new(1, -20, 0, 1)
Divider.Position = UDim2.new(0, 10, 0, 125)
Divider.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
Divider.BorderSizePixel = 0
Divider.Parent = MainFrame

-- Секция с функциями
local FunctionFrame = Instance.new("Frame")
FunctionFrame.Name = "FunctionFrame"
FunctionFrame.Size = UDim2.new(1, -20, 0, 200)
FunctionFrame.Position = UDim2.new(0, 10, 0, 135)
FunctionFrame.BackgroundTransparency = 1
FunctionFrame.Parent = MainFrame

-- Функция Auto Bond
local AutoBondFrame = Instance.new("Frame")
AutoBondFrame.Name = "AutoBondFrame"
AutoBondFrame.Size = UDim2.new(1, 0, 0, 45)
AutoBondFrame.Position = UDim2.new(0, 0, 0, 10)
AutoBondFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
AutoBondFrame.BorderSizePixel = 0
AutoBondFrame.Parent = FunctionFrame

local AutoBondCorner = Instance.new("UICorner")
AutoBondCorner.CornerRadius = UDim.new(0, 8)
AutoBondCorner.Parent = AutoBondFrame

-- Название функции Auto Bond
local AutoBondLabel = Instance.new("TextLabel")
AutoBondLabel.Name = "AutoBondLabel"
AutoBondLabel.Size = UDim2.new(0.6, 0, 1, 0)
AutoBondLabel.Position = UDim2.new(0, 15, 0, 0)
AutoBondLabel.BackgroundTransparency = 1
AutoBondLabel.Text = "Auto Bond"
AutoBondLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondLabel.TextSize = 16
AutoBondLabel.Font = Enum.Font.GothamMedium
AutoBondLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoBondLabel.Parent = AutoBondFrame

-- Кнопка включения/выключения
local AutoBondButton = Instance.new("TextButton")
AutoBondButton.Name = "AutoBondButton"
AutoBondButton.Size = UDim2.new(0, 80, 0, 30)
AutoBondButton.Position = UDim2.new(1, -95, 0.5, -15)
AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
AutoBondButton.BorderSizePixel = 0
AutoBondButton.Text = "OFF"
AutoBondButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoBondButton.TextSize = 14
AutoBondButton.Font = Enum.Font.GothamBold
AutoBondButton.Parent = AutoBondFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = AutoBondButton

-- Переменные состояния
local autoBondEnabled = false
local player = game.Players.LocalPlayer
local bondsCollected = 0

-- Основная функция Auto Bond (адаптирована из HEATWAVE)
local function collectBonds()
    local character = player.Character
    if not character then return end
    
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    
    -- Собираем все бонды в радиусе
    for _, item in ipairs(workspace:GetDescendants()) do
        if item:IsA("Part") or item:IsA("MeshPart") then
            -- Проверяем, является ли предмет бондом
            local isBond = false
            local itemName = item.Name:lower()
            
            -- Проверка по имени (адаптировано под Dead Rails)
            if itemName:find("bond") or 
               itemName:find("money") or 
               itemName:find("cash") or
               itemName:find("coin") or
               itemName:find("gold") or
               itemName:find("dollar") then
                isBond = true
            end
            
            -- Проверка родительского объекта
            if item.Parent and item.Parent:IsA("Model") then
                local parentName = item.Parent.Name:lower()
                if parentName:find("bond") or parentName:find("money") then
                    isBond = true
                end
            end
            
            if isBond and item:IsDescendantOf(workspace) then
                -- Проверяем, что предмет не является частью персонажа
                if not item:IsDescendantOf(character) then
                    -- Телепортируем бонд к игроку
                    pcall(function()
                        local distance = (item.Position - rootPart.Position).Magnitude
                        
                        -- Телепортация прямо к игроку
                        item.CFrame = rootPart.CFrame * CFrame.new(0, 0, -3)
                        item.Anchored = false
                        item.CanCollide = false
                        
                        -- Симуляция сбора
                        firetouchinterest(rootPart, item, 0)
                        task.wait(0.05)
                        firetouchinterest(rootPart, item, 1)
                        
                        bondsCollected = bondsCollected + 1
                    end)
                end
            end
        end
    end
end

-- Дополнительная функция для сбора через ProximityPrompt (из HEATWAVE)
local function collectNearbyBonds()
    local character = player.Character
    if not character then return end
    
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not rootPart then return end
    
    -- Более агрессивный сбор всего вокруг
    for _, item in ipairs(workspace:GetDescendants()) do
        if item:IsA("ProximityPrompt") then
            -- Автоматически активируем ProximityPrompt для сбора
            pcall(function()
                local distance = (item.Parent.Position - rootPart.Position).Magnitude
                if distance < 20 then
                    fireproximityprompt(item)
                end
            end)
        end
        
        -- Сбор всех подбираемых предметов
        if item:IsA("Tool") and item:IsDescendantOf(workspace) then
            pcall(function()
                item.Parent = player.Backpack
            end)
        end
    end
end

-- Основной цикл Auto Bond
local function autoBondLoop()
    while autoBondEnabled do
        pcall(function()
            collectBonds()
            collectNearbyBonds()
        end)
        task.wait(0.3) -- Задержка из оригинального скрипта
    end
end

-- Обработчик нажатия на кнопку
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        bondsCollected = 0
        task.spawn(autoBondLoop)
    else
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        AutoBondButton.Text = "OFF"
    end
end)

-- Статус сборки бондов
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Size = UDim2.new(1, -20, 0, 20)
StatusLabel.Position = UDim2.new(0, 10, 0, 115)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "Статус: Готов к работе"
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
StatusLabel.TextSize = 12
StatusLabel.Font = Enum.Font.GothamMedium
StatusLabel.TextXAlignment = Enum.TextXAlignment.Left
StatusLabel.Parent = MainFrame

-- Обновление статуса
task.spawn(function()
    while true do
        if autoBondEnabled then
            StatusLabel.Text = "Статус: Активен | Собрано: " .. bondsCollected
        else
            StatusLabel.Text = "Статус: Готов к работе"
        end
        task.wait(0.5)
    end
end)

-- Водяной знак
local Watermark = Instance.new("TextLabel")
Watermark.Name = "Watermark"
Watermark.Size = UDim2.new(0, 200, 0, 20)
Watermark.Position = UDim2.new(1, -210, 1, -25)
Watermark.BackgroundTransparency = 1
Watermark.Text = "Lunion Hub | Dead Rails"
Watermark.TextColor3 = Color3.fromRGB(255, 255, 255)
Watermark.TextTransparency = 0.3
Watermark.TextSize = 12
Watermark.Font = Enum.Font.GothamMedium
Watermark.TextXAlignment = Enum.TextXAlignment.Right
Watermark.Parent = MainFrame

-- Делаем GUI перетаскиваемым
local UserInputService = game:GetService("UserInputService")
local gui = MainFrame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

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
        update(input)
    end
end)
