--[[
    Lunion Hub - Dead Rails Script (Optimized Auto-Collect)
    Спасибо за использование нашего хаба!
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

-- Auto Bond фрейм
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

-- Кнопка (КРАСНАЯ)
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

-- Статус
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

-- АНИМАЦИЯ ИНТЕРФЕЙСА
task.wait(0.5)

for i = 1, 20 do
    MainFrame.Size = UDim2.new(0, 300, 0, 60 + (i * 7))
    task.wait(0.05)
end

for i = 1, 10 do
    Line.BackgroundTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

for i = 1, 10 do
    ThanksText.TextTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

for i = 1, 10 do
    AutoBondFrame.BackgroundTransparency = 1 - (i * 0.1)
    AutoBondLabel.TextTransparency = 1 - (i * 0.1)
    AutoBondButton.TextTransparency = 1 - (i * 0.1)
    StatusLabel.TextTransparency = 1 - (i * 0.1)
    task.wait(0.03)
end

-- === ОБНОВЛЕННАЯ ФУНКЦИЯ СБОРА БОНДОВ ===
local autoBondEnabled = false
local player = game.Players.LocalPlayer
local collected = 0

-- Ждем полную загрузку
if not game:IsLoaded() then game.Loaded:Wait() end

local function collectLoop()
    while autoBondEnabled do
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        
        if hrp then
            -- Перебираем объекты в Workspace целенаправленно
            for _, obj in pairs(workspace:GetDescendants()) do
                if not autoBondEnabled then break end
                
                -- Проверка: имя объекта содержит "bond" или "money"
                local nameLower = obj.Name:lower()
                if nameLower:find("bond") or nameLower:find("money") then
                    
                    -- 1. Если это физическая часть (BasePart)
                    if obj:IsA("BasePart") and not obj:IsDescendantOf(char) then
                        pcall(function()
                            -- Отключаем якорь, чтобы предмет мог перемещаться, и обнуляем скорость
                            obj.Anchored = false
                            obj.Velocity = Vector3.zero
                            -- Телепортируем прямо в координаты игрока
                            obj.CFrame = hrp.CFrame + Vector3.new(0, 1, 0)
                            
                            -- Симулируем мгновенное физическое касание (Touch Interest)
                            firetouchinterest(hrp, obj, 0)
                            task.wait()
                            firetouchinterest(hrp, obj, 1)
                            
                            collected = collected + 1
                            StatusLabel.Text = "Запущен | Собрано: " .. collected
                        end)
                    end
                    
                    -- 2. Если внутри модели/предмета есть триггеры взаимодействия
                    -- Проверяем наличие ProximityPrompt
                    local prompt = obj:FindFirstChildOfClass("ProximityPrompt") or (obj:IsA("ProximityPrompt") and obj)
                    if prompt and prompt.Enabled then
                        pcall(function()
                            fireproximityprompt(prompt)
                        end)
                    end
                    
                    -- Проверяем наличие ClickDetector (часто используется в Dead Rails)
                    local clicker = obj:FindFirstChildOfClass("ClickDetector") or (obj:IsA("ClickDetector") and obj)
                    if clicker then
                        pcall(function()
                            fireclickdetector(clicker)
                        end)
                    end
                    
                    -- 3. Если это инструмент (Tool), лежащий на земле
                    if obj:IsA("Tool") and obj.Parent == workspace then
                        pcall(function()
                            obj.Parent = player.Backpack
                            collected = collected + 1
                            StatusLabel.Text = "Запущен | Собрано: " .. collected
                        end)
                    end
                    
                end
            end
        end
        -- Оптимальная задержка, чтобы не крашить клиент частыми проверками
        task.wait(0.5) 
    end
end

-- Кнопка переключения
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        StatusLabel.Text = "Запущен | Собрано: " .. collected
        task.spawn(collectLoop)
    else
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        AutoBondButton.Text = "OFF"
        StatusLabel.Text = "Остановлен | Собрано: " .. collected
    end
end)

-- Перетаскивание GUI
local UIS = game:GetService("UserInputService")
local drag, start, pos

MainFrame.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 then
        drag = true
        start = i.Position
        pos = MainFrame.Position
    end
end)

MainFrame.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 then
        drag = false
    end
end)

UIS.InputChanged:Connect(function(i)
    if drag and i.UserInputType == Enum.UserInputType.MouseMovement then
        local d = i.Position - start
        MainFrame.Position = UDim2.new(pos.X.Scale, pos.X.Offset + d.X, pos.Y.Scale, pos.Y.Offset + d.Y)
    end
end)
