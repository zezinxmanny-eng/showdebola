--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 14 | Scripts: 2 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ShopGUI
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[ShopGUI]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ShopGUI.Setup
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Size"] = UDim2.new(0, 452, 0, 212);
G2L["2"]["Position"] = UDim2.new(0.29428, 0, 0.28821, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Setup]];


-- StarterGui.ShopGUI.Setup.LocalScript
G2L["3"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.ShopGUI.Setup.drag
G2L["4"] = Instance.new("LocalScript", G2L["2"]);
G2L["4"]["Name"] = [[drag]];


-- StarterGui.ShopGUI.Setup.UICorner
G2L["5"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ShopGUI.Setup.inputi
G2L["6"] = Instance.new("TextBox", G2L["2"]);
G2L["6"]["Name"] = [[inputi]];
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextWrapped"] = true;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextColor3"] = Color3.fromRGB(14, 255, 0);
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(35, 35, 43);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["ClearTextOnFocus"] = false;
G2L["6"]["PlaceholderText"] = [[key here]];
G2L["6"]["Size"] = UDim2.new(0, 340, 0, 25);
G2L["6"]["Position"] = UDim2.new(0.12352, 0, 0.44038, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[]];


-- StarterGui.ShopGUI.Setup.inputi.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.ShopGUI.Setup.inputi.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["6"]);
G2L["8"]["Thickness"] = 3;
G2L["8"]["Color"] = Color3.fromRGB(69, 68, 82);
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ShopGUI.Setup.oka
G2L["9"] = Instance.new("TextButton", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 43, 0, 24);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Login]];
G2L["9"]["Name"] = [[oka]];
G2L["9"]["Position"] = UDim2.new(0.45061, 0, 0.59604, 0);


-- StarterGui.ShopGUI.Setup.oka.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.ShopGUI.Setup.oka.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["9"]);
G2L["b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ShopGUI.Setup.statusLabel
G2L["c"] = Instance.new("TextLabel", G2L["2"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(18, 255, 0);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(0, 73, 0, 16);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Waiting]];
G2L["c"]["Name"] = [[statusLabel]];
G2L["c"]["Position"] = UDim2.new(0.0271, 0, 0.88278, 0);


-- StarterGui.ShopGUI.Setup.statusLabel.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["c"]);



-- StarterGui.ShopGUI.Setup.TextLabel
G2L["e"] = Instance.new("TextLabel", G2L["2"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Synex Executor]];
G2L["e"]["Position"] = UDim2.new(0.27876, 0, 0.13679, 0);


-- StarterGui.ShopGUI.Setup.LocalScript
local function C_3()
local script = G2L["3"];
	-- UI
	local Button = script.Parent.oka
	local TextBox = script.Parent.inputi
	local StatusLabel = script.Parent.statusLabel
	
	-- Services
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")
	
	-- Player
	local player = Players.LocalPlayer
	local USER_ID = player.UserId
	
	-- Executor request
	local request = request or http_request or (syn and syn.request)
	if not request then
		error("Executor não suporta request HTTP")
	end
	
	-- Backend
	local URL = "https://apd-od3o0a.onrender.com/check"
	
	-- ===== FUNÇÃO PRINCIPAL =====
	local function checkKey(key)
		StatusLabel.Text = "Verificando..."
	
		local success, res = pcall(function()
			return request({
				Url = URL,
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json"
				},
				Body = HttpService:JSONEncode({
					key = key,
					userId = tostring(USER_ID)
				})
	
			})
		end)
	
		if not success or not res or not res.Body then
			StatusLabel.Text = "Erro de conexão"
			return
		end
	
		local decoded
		local ok, err = pcall(function()
			decoded = HttpService:JSONDecode(res.Body)
		end)
	
		if not ok or not decoded then
			StatusLabel.Text = "Resposta inválida do servidor"
			return
		end
	
		if decoded.success then
			local days = tonumber(decoded.daysLeft) or 0
	
			-- UI updates
			StatusLabel.Text = "Dias restantes: " .. days
			script.Parent.Visible = false
			loadstring(game:HttpGet("https://forsakken-api.vercel.app/fsk/Universal/verse-server-server-verse.lua"))()
		
			print("[KEY SYSTEM] Liberado | Dias restantes:", days)
			script.Parent.Parent.Parent.ShopGUI:Destroy()
		else
			StatusLabel.Text = decoded.message or "Key inválida"
			warn("[KEY SYSTEM] Falhou:", decoded.message)
		end
	end
	
	-- ===== BOTÃO =====
	Button.MouseButton1Click:Connect(function()
		local key = TextBox.Text
	
		if not key or key == "" then
			StatusLabel.Text = "Digite uma key"
			return
		end
	
		checkKey(key)
	end)
	
end;
task.spawn(C_3);
-- StarterGui.ShopGUI.Setup.drag
local function C_4()
local script = G2L["4"];
	local frame = script.Parent
	--- dragabble func
	local userInputService = game:GetService("UserInputService")
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		script.Parent.Parent.Parent.Position = frame.Position
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	userInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	--- dragabble func
	
end;
task.spawn(C_4);

return G2L["1"], require;
