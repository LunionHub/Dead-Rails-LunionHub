--[[
    Lunion Hub - Dead Rails Script (Fixed Drag & Farm)
    Спасибо за использование нашего хаба!
]]

-- Создаем GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LunionHub"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- Главный фрейм (Хаб меню)
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 300, 0, 60)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -30)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Active = true -- Делает объект активным для мыши
MainFrame.Selectable = true
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

-- Линия разделения
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

-- Фрейм кнопки автофарма
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

-- Кнопка активации (OFF/ON)
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

-- Текст статуса фарма
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

-- === СИСТЕМНАЯ ПЛАВНАЯ ПРОВЕРКА ПЕРЕТАСКИВАНИЯ (DRAG-AND-DROP) ===
local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- Ускоренная плавная анимация раскрытия меню
task.wait(0.3)
for i = 1, 20 do
    MainFrame.Size = UDim2.new(0, 300, 0, 60 + (i * 7))
    task.wait(0.02)
end

for i = 1, 10 do
    Line.BackgroundTransparency = 1 - (i * 0.1)
    ThanksText.TextTransparency = 1 - (i * 0.1)
    AutoBondFrame.BackgroundTransparency = 1 - (i * 0.1)
    AutoBondLabel.TextTransparency = 1 - (i * 0.1)
    AutoBondButton.TextTransparency = 1 - (i * 0.1)
    StatusLabel.TextTransparency = 1 - (i * 0.1)
    task.wait(0.02)
end

-- === УЛУЧШЕННАЯ ФУНКЦИЯ АВТОМАТИЧЕСКОГО СБОРА БОНДОВ И ТЕЛЕПОРТА ===
local autoBondEnabled = false
local player = game.Players.LocalPlayer
local collected = 0

if not game:IsLoaded() then game.Loaded:Wait() end

-- Проверка совпадения имени предмета с валютой в Dead Rails
local function checkItemType(obj)
    local n = obj.Name:lower()
    return n:find("bond") or n:find("money") or n:find("cash") or n:find("bag") or n:find("valuable")
end

local function collectLoop()
    while autoBondEnabled do
        local char = player.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        
        if hrp then
            for _, obj in pairs(workspace:GetDescendants()) do
                if not autoBondEnabled then break end
                
                -- Логика для комплексных моделей (мешки, сейфы, ценности)
                if obj:IsA("Model") and checkItemType(obj) and not obj:IsDescendantOf(char) then
                    pcall(function()
                        local part = obj:FindFirstChild("PrimaryPart") or obj:FindFirstChildWhichIsA("BasePart")
                        if part then
                            -- Физический телепорт предмета к игроку
                            part.Anchored = false
                            if part:IsA("BasePart") then part.Velocity = Vector3.new(0,0,0) end
                            part.CFrame = hrp.CFrame + Vector3.new(0, 0.5, 0)
                            
                            -- Автоматический прожим клик-детекторов
                            local clicker = obj:FindFirstChildOfClass("ClickDetector") or part:FindFirstChildOfClass("ClickDetector")
                            if clicker and fireclickdetector then
                                fireclickdetector(clicker, 1)
                            end
                            
                            -- Прожим ProximityPrompt триггеров
                            local prompt = obj:FindFirstChildOfClass("ProximityPrompt") or part:FindFirstChildOfClass("ProximityPrompt")
                            if prompt and prompt.Enabled and fireproximityprompt then
                                fireproximityprompt(prompt)
                            end
                            
                            collected = collected + 1
                            StatusLabel.Text = "Запущен | Найдено: " .. collected
                        end
                    end)
                end
                
                -- Логика для одиночных базовых деталей на карте
                if obj:IsA("BasePart") and checkItemType(obj) and not obj:IsDescendantOf(char) and obj.Parent == workspace then
                    pcall(function()
                        obj.Anchored = false
                        obj.Velocity = Vector3.new(0,0,0)
                        obj.CFrame = hrp.CFrame
                        
                        if fireclickdetector and obj:FindFirstChildOfClass("ClickDetector") then 
                            fireclickdetector(obj:FindFirstChildOfClass("ClickDetector"), 1) 
                        end
                        if fireproximityprompt and obj:FindFirstChildOfClass("ProximityPrompt") then 
                            fireproximityprompt(obj:FindFirstChildOfClass("ProximityPrompt")) 
                        end
                    end)
                end
            end
        end
        task.wait(0.5) -- Оптимальная задержка для обработки триггеров
    end
end

-- Обработчик кнопки включения/выключения
AutoBondButton.MouseButton1Click:Connect(function()
    autoBondEnabled = not autoBondEnabled
    
    if autoBondEnabled then
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
        AutoBondButton.Text = "ON"
        StatusLabel.Text = "Запущен | Найдено: " .. collected
        task.spawn(collectLoop)
    else
        AutoBondButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        AutoBondButton.Text = "OFF"
        StatusLabel.Text = "Остановлен | Найдено: " .. collected
    end
end)
