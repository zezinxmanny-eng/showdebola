--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 135 | Scripts: 8 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.CoreGUI
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[CoreGUI]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.CoreGUI.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["2"]["Size"] = UDim2.new(0, 422, 0, 243);
G2L["2"]["Position"] = UDim2.new(0.11227, 0, 0.26969, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["Visible"] = false;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Size"] = UDim2.new(0, 634, 0, 433);
G2L["3"]["Position"] = UDim2.new(0.27962, 0, -0.41975, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[ata]];


-- StarterGui.CoreGUI.Frame.ata.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["3"]);



-- StarterGui.CoreGUI.Frame.ata.chiti
G2L["5"] = Instance.new("Frame", G2L["3"]);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 545, 0, 433);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[chiti]];
G2L["5"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.chiti.tx
G2L["6"] = Instance.new("Frame", G2L["5"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["6"]["Size"] = UDim2.new(0, 515, 0, 314);
G2L["6"]["Position"] = UDim2.new(0.18927, 0, 0.15935, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[tx]];


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.CoreGUI.Frame.ata.chiti.tx.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["6"]);
G2L["8"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Executer
G2L["9"] = Instance.new("TextButton", G2L["6"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9"]["Size"] = UDim2.new(0, 114, 0, 26);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Execute]];
G2L["9"]["Name"] = [[Executer]];
G2L["9"]["Position"] = UDim2.new(0.01282, 0, 1.02875, 0);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Executer.LocalScript
G2L["a"] = Instance.new("LocalScript", G2L["9"]);



-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Executer.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["9"]);
G2L["b"]["Color"] = Color3.fromRGB(52, 54, 59);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Executer.UICorner
G2L["c"] = Instance.new("UICorner", G2L["9"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Reseter
G2L["d"] = Instance.new("TextButton", G2L["6"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["d"]["Size"] = UDim2.new(0, 114, 0, 26);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Reset]];
G2L["d"]["Name"] = [[Reseter]];
G2L["d"]["Position"] = UDim2.new(0.25531, 0, 1.02875, 0);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Reseter.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["d"]);
G2L["e"]["Color"] = Color3.fromRGB(52, 54, 59);
G2L["e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Reseter.UICorner
G2L["f"] = Instance.new("UICorner", G2L["d"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Fixer
G2L["10"] = Instance.new("TextButton", G2L["6"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10"]["Size"] = UDim2.new(0, 114, 0, 26);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Fix anything]];
G2L["10"]["Name"] = [[Fixer]];
G2L["10"]["Position"] = UDim2.new(0.77787, 0, 1.02875, 0);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Fixer.UIStroke
G2L["11"] = Instance.new("UIStroke", G2L["10"]);
G2L["11"]["Color"] = Color3.fromRGB(52, 54, 59);
G2L["11"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Fixer.UICorner
G2L["12"] = Instance.new("UICorner", G2L["10"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.ScrollingFrame
G2L["13"] = Instance.new("ScrollingFrame", G2L["6"]);
G2L["13"]["Active"] = true;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["CanvasSize"] = UDim2.new(0, 0, 10, 0);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(0, 514, 0, 307);
G2L["13"]["ScrollBarImageColor3"] = Color3.fromRGB(36, 113, 0);
G2L["13"]["Position"] = UDim2.new(0, 0, 0.02229, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["ScrollBarThickness"] = 4;
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.chiti.tx.ScrollingFrame.Inp
G2L["14"] = Instance.new("TextBox", G2L["13"]);
G2L["14"]["Name"] = [[Inp]];
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextWrapped"] = true;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["ClearTextOnFocus"] = false;
G2L["14"]["Size"] = UDim2.new(0, 492, 0, 5000);
G2L["14"]["Position"] = UDim2.new(0.04078, 0, 0, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[]];
G2L["14"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.tab
G2L["15"] = Instance.new("Frame", G2L["3"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Size"] = UDim2.new(0, 82, 0, 433);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[tab]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.tab.Icon
G2L["16"] = Instance.new("ImageLabel", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Image"] = [[rbxassetid://11978717322]];
G2L["16"]["Size"] = UDim2.new(0, 60, 0, 58);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Name"] = [[Icon]];
G2L["16"]["Position"] = UDim2.new(0.12195, 0, 0.0254, 0);


-- StarterGui.CoreGUI.Frame.ata.tab.Icon.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);



-- StarterGui.CoreGUI.Frame.ata.tab.Exec
G2L["18"] = Instance.new("TextButton", G2L["15"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 71, 0, 34);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[]];
G2L["18"]["Name"] = [[Exec]];
G2L["18"]["Position"] = UDim2.new(0, 0, 0.1963, 0);


-- StarterGui.CoreGUI.Frame.ata.tab.Exec.LocalScript
G2L["19"] = Instance.new("LocalScript", G2L["18"]);



-- StarterGui.CoreGUI.Frame.ata.tab.Exec.Ic
G2L["1a"] = Instance.new("ImageLabel", G2L["18"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["ImageColor3"] = Color3.fromRGB(18, 255, 0);
G2L["1a"]["Image"] = [[rbxassetid://10709807111]];
G2L["1a"]["Size"] = UDim2.new(0, 34, 0, 27);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Name"] = [[Ic]];
G2L["1a"]["Position"] = UDim2.new(0.33803, 0, 0.08824, 0);


-- StarterGui.CoreGUI.Frame.ata.tab.Exec.Indicator1
G2L["1b"] = Instance.new("Frame", G2L["18"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["Size"] = UDim2.new(0, 15, 0, 33);
G2L["1b"]["Position"] = UDim2.new(-0.00168, 0, 0.00581, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Indicator1]];


-- StarterGui.CoreGUI.Frame.ata.tab.Exec.Indicator1.UIGradient
G2L["1c"] = Instance.new("UIGradient", G2L["1b"]);
G2L["1c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["1c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.tab.Menus
G2L["1d"] = Instance.new("TextButton", G2L["15"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextSize"] = 14;
G2L["1d"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Size"] = UDim2.new(0, 71, 0, 34);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[]];
G2L["1d"]["Name"] = [[Menus]];
G2L["1d"]["Position"] = UDim2.new(0, 0, 0.29561, 0);


-- StarterGui.CoreGUI.Frame.ata.tab.Menus.LocalScript
G2L["1e"] = Instance.new("LocalScript", G2L["1d"]);



-- StarterGui.CoreGUI.Frame.ata.tab.Menus.Ic
G2L["1f"] = Instance.new("ImageLabel", G2L["1d"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(185, 185, 185);
G2L["1f"]["ImageColor3"] = Color3.fromRGB(201, 201, 201);
G2L["1f"]["Image"] = [[rbxassetid://10723343321]];
G2L["1f"]["Size"] = UDim2.new(0, 27, 0, 27);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Name"] = [[Ic]];
G2L["1f"]["Position"] = UDim2.new(0.38028, 0, 0.05882, 0);


-- StarterGui.CoreGUI.Frame.ata.tab.Menus.Indicator1
G2L["20"] = Instance.new("Frame", G2L["1d"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["Size"] = UDim2.new(0, 15, 0, 33);
G2L["20"]["Position"] = UDim2.new(-0.00168, 0, 0, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[Indicator1]];


-- StarterGui.CoreGUI.Frame.ata.tab.Menus.Indicator1.UIGradient
G2L["21"] = Instance.new("UIGradient", G2L["20"]);
G2L["21"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["21"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.tab.Frame
G2L["22"] = Instance.new("Frame", G2L["15"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(38, 39, 45);
G2L["22"]["Size"] = UDim2.new(0, 60, 0, 1);
G2L["22"]["Position"] = UDim2.new(0.12195, 0, 0.17321, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu
G2L["23"] = Instance.new("Frame", G2L["3"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(0, 545, 0, 433);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[Menu]];
G2L["23"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame
G2L["24"] = Instance.new("ScrollingFrame", G2L["23"]);
G2L["24"]["Active"] = true;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["Size"] = UDim2.new(0, 273, 0, 392);
G2L["24"]["ScrollBarImageColor3"] = Color3.fromRGB(14, 95, 0);
G2L["24"]["Position"] = UDim2.new(0.18532, 0, 0.09469, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["ScrollBarThickness"] = 4;
G2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx
G2L["25"] = Instance.new("Frame", G2L["24"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["25"]["Size"] = UDim2.new(0, 244, 0, 67);
G2L["25"]["Position"] = UDim2.new(0.07025, 0, 0.00508, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[tx]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.UIStroke
G2L["27"] = Instance.new("UIStroke", G2L["25"]);
G2L["27"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele
G2L["28"] = Instance.new("Frame", G2L["25"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(18, 19, 21);
G2L["28"]["Size"] = UDim2.new(0, 244, 0, 28);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[laele]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["28"]);
G2L["2a"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Nm
G2L["2b"] = Instance.new("TextLabel", G2L["28"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Size"] = UDim2.new(0, 166, 0, 28);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[Synex]];
G2L["2b"]["Name"] = [[Nm]];
G2L["2b"]["Position"] = UDim2.new(0.13934, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Icon
G2L["2c"] = Instance.new("ImageLabel", G2L["28"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["ImageColor3"] = Color3.fromRGB(35, 255, 0);
G2L["2c"]["Image"] = [[rbxassetid://10723396954]];
G2L["2c"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Name"] = [[Icon]];
G2L["2c"]["Position"] = UDim2.new(0.02459, 0, 0.14286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Icon.Indicator1
G2L["2d"] = Instance.new("Frame", G2L["2c"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["Size"] = UDim2.new(0, 24, 0, 23);
G2L["2d"]["Position"] = UDim2.new(-0.10168, 0, -0.14419, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Name"] = [[Indicator1]];
G2L["2d"]["BackgroundTransparency"] = 0.65;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Icon.Indicator1.UIGradient
G2L["2e"] = Instance.new("UIGradient", G2L["2d"]);
G2L["2e"]["Rotation"] = -90;
G2L["2e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Exp
G2L["2f"] = Instance.new("TextLabel", G2L["28"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(0, 166, 0, 16);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[Expiration:]];
G2L["2f"]["Name"] = [[Exp]];
G2L["2f"]["Position"] = UDim2.new(0.02459, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.laele.Nv
G2L["30"] = Instance.new("TextLabel", G2L["28"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(5, 255, 0);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(0, 38, 0, 16);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Never]];
G2L["30"]["Name"] = [[Nv]];
G2L["30"]["Position"] = UDim2.new(0.29508, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy
G2L["31"] = Instance.new("TextButton", G2L["25"]);
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Size"] = UDim2.new(0, 45, 0, 25);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[]];
G2L["31"]["Name"] = [[Load_Sy]];
G2L["31"]["Position"] = UDim2.new(0.77049, 0, 0.50746, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy.LocalScript
G2L["32"] = Instance.new("LocalScript", G2L["31"]);



-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy.UIStroke
G2L["33"] = Instance.new("UIStroke", G2L["31"]);
G2L["33"]["Color"] = Color3.fromRGB(68, 68, 68);
G2L["33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy.UICorner
G2L["34"] = Instance.new("UICorner", G2L["31"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy.TextLabel
G2L["35"] = Instance.new("TextLabel", G2L["31"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Size"] = UDim2.new(0, 31, 0, 19);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[LOAD]];
G2L["35"]["Position"] = UDim2.new(0.13333, 0, 0.08, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2
G2L["36"] = Instance.new("Frame", G2L["24"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["36"]["Size"] = UDim2.new(0, 244, 0, 67);
G2L["36"]["Position"] = UDim2.new(0.07025, 0, 0.09976, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[tx2]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UICorner
G2L["37"] = Instance.new("UICorner", G2L["36"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UIStroke
G2L["38"] = Instance.new("UIStroke", G2L["36"]);
G2L["38"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele
G2L["39"] = Instance.new("Frame", G2L["36"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(18, 19, 21);
G2L["39"]["Size"] = UDim2.new(0, 244, 0, 28);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Name"] = [[laele]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["39"]);
G2L["3a"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UIStroke
G2L["3b"] = Instance.new("UIStroke", G2L["39"]);
G2L["3b"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["3c"] = Instance.new("TextLabel", G2L["39"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["TextSize"] = 14;
G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Size"] = UDim2.new(0, 166, 0, 28);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Text"] = [[Bypass adonis]];
G2L["3c"]["Position"] = UDim2.new(0.13934, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon
G2L["3d"] = Instance.new("ImageLabel", G2L["39"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["ImageColor3"] = Color3.fromRGB(35, 255, 0);
G2L["3d"]["Image"] = [[rbxassetid://10723396954]];
G2L["3d"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Name"] = [[Icon]];
G2L["3d"]["Position"] = UDim2.new(0.02459, 0, 0.14286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1
G2L["3e"] = Instance.new("Frame", G2L["3d"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["Size"] = UDim2.new(0, 24, 0, 23);
G2L["3e"]["Position"] = UDim2.new(-0.10168, 0, -0.14419, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[Indicator1]];
G2L["3e"]["BackgroundTransparency"] = 0.65;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1.UIGradient
G2L["3f"] = Instance.new("UIGradient", G2L["3e"]);
G2L["3f"]["Rotation"] = -90;
G2L["3f"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["40"] = Instance.new("TextLabel", G2L["39"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextSize"] = 14;
G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["BackgroundTransparency"] = 1;
G2L["40"]["Size"] = UDim2.new(0, 166, 0, 16);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[Expiration:]];
G2L["40"]["Position"] = UDim2.new(0.02459, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["41"] = Instance.new("TextLabel", G2L["39"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["TextSize"] = 14;
G2L["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["TextColor3"] = Color3.fromRGB(5, 255, 0);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Size"] = UDim2.new(0, 38, 0, 16);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[Never]];
G2L["41"]["Position"] = UDim2.new(0.29508, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp
G2L["42"] = Instance.new("TextButton", G2L["36"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["Size"] = UDim2.new(0, 45, 0, 25);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Text"] = [[]];
G2L["42"]["Name"] = [[Load_Byp]];
G2L["42"]["Position"] = UDim2.new(0.77049, 0, 0.50746, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
G2L["43"] = Instance.new("LocalScript", G2L["42"]);



-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UIStroke
G2L["44"] = Instance.new("UIStroke", G2L["42"]);
G2L["44"]["Color"] = Color3.fromRGB(68, 68, 68);
G2L["44"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UICorner
G2L["45"] = Instance.new("UICorner", G2L["42"]);
G2L["45"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.TextLabel
G2L["46"] = Instance.new("TextLabel", G2L["42"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextSize"] = 14;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["BackgroundTransparency"] = 1;
G2L["46"]["Size"] = UDim2.new(0, 31, 0, 19);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Text"] = [[LOAD]];
G2L["46"]["Position"] = UDim2.new(0.13333, 0, 0.08, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2
G2L["47"] = Instance.new("Frame", G2L["24"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["47"]["Size"] = UDim2.new(0, 244, 0, 67);
G2L["47"]["Position"] = UDim2.new(0.07025, 0, 0.19214, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Name"] = [[tx2]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UICorner
G2L["48"] = Instance.new("UICorner", G2L["47"]);
G2L["48"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UIStroke
G2L["49"] = Instance.new("UIStroke", G2L["47"]);
G2L["49"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele
G2L["4a"] = Instance.new("Frame", G2L["47"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(18, 19, 21);
G2L["4a"]["Size"] = UDim2.new(0, 244, 0, 28);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Name"] = [[laele]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UIStroke
G2L["4c"] = Instance.new("UIStroke", G2L["4a"]);
G2L["4c"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["4d"] = Instance.new("TextLabel", G2L["4a"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Size"] = UDim2.new(0, 166, 0, 28);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Text"] = [[Dex explorer]];
G2L["4d"]["Position"] = UDim2.new(0.13934, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon
G2L["4e"] = Instance.new("ImageLabel", G2L["4a"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["ImageColor3"] = Color3.fromRGB(35, 255, 0);
G2L["4e"]["Image"] = [[rbxassetid://10723396954]];
G2L["4e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Name"] = [[Icon]];
G2L["4e"]["Position"] = UDim2.new(0.02459, 0, 0.14286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1
G2L["4f"] = Instance.new("Frame", G2L["4e"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["Size"] = UDim2.new(0, 24, 0, 23);
G2L["4f"]["Position"] = UDim2.new(-0.10168, 0, -0.14419, 0);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Name"] = [[Indicator1]];
G2L["4f"]["BackgroundTransparency"] = 0.65;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1.UIGradient
G2L["50"] = Instance.new("UIGradient", G2L["4f"]);
G2L["50"]["Rotation"] = -90;
G2L["50"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["50"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["51"] = Instance.new("TextLabel", G2L["4a"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextSize"] = 14;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(0, 166, 0, 16);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[Expiration:]];
G2L["51"]["Position"] = UDim2.new(0.02459, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["52"] = Instance.new("TextLabel", G2L["4a"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(5, 255, 0);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(0, 38, 0, 16);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Text"] = [[Never]];
G2L["52"]["Position"] = UDim2.new(0.29508, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp
G2L["53"] = Instance.new("TextButton", G2L["47"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Size"] = UDim2.new(0, 45, 0, 25);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[]];
G2L["53"]["Name"] = [[Load_Byp]];
G2L["53"]["Position"] = UDim2.new(0.77049, 0, 0.50746, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
G2L["54"] = Instance.new("LocalScript", G2L["53"]);



-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UIStroke
G2L["55"] = Instance.new("UIStroke", G2L["53"]);
G2L["55"]["Color"] = Color3.fromRGB(68, 68, 68);
G2L["55"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UICorner
G2L["56"] = Instance.new("UICorner", G2L["53"]);
G2L["56"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.TextLabel
G2L["57"] = Instance.new("TextLabel", G2L["53"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["TextSize"] = 14;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["Size"] = UDim2.new(0, 31, 0, 19);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Text"] = [[LOAD]];
G2L["57"]["Position"] = UDim2.new(0.13333, 0, 0.08, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2
G2L["58"] = Instance.new("Frame", G2L["24"]);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["58"]["Size"] = UDim2.new(0, 244, 0, 67);
G2L["58"]["Position"] = UDim2.new(0.07025, 0, 0.28683, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Name"] = [[tx2]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UICorner
G2L["59"] = Instance.new("UICorner", G2L["58"]);
G2L["59"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.UIStroke
G2L["5a"] = Instance.new("UIStroke", G2L["58"]);
G2L["5a"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele
G2L["5b"] = Instance.new("Frame", G2L["58"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(18, 19, 21);
G2L["5b"]["Size"] = UDim2.new(0, 244, 0, 28);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[laele]];


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.UIStroke
G2L["5d"] = Instance.new("UIStroke", G2L["5b"]);
G2L["5d"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["5e"] = Instance.new("TextLabel", G2L["5b"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["Size"] = UDim2.new(0, 166, 0, 28);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[Remote Spy v7]];
G2L["5e"]["Position"] = UDim2.new(0.13934, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon
G2L["5f"] = Instance.new("ImageLabel", G2L["5b"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["ImageColor3"] = Color3.fromRGB(35, 255, 0);
G2L["5f"]["Image"] = [[rbxassetid://10723396954]];
G2L["5f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[Icon]];
G2L["5f"]["Position"] = UDim2.new(0.02459, 0, 0.14286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1
G2L["60"] = Instance.new("Frame", G2L["5f"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(0, 24, 0, 23);
G2L["60"]["Position"] = UDim2.new(-0.10168, 0, -0.14419, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Name"] = [[Indicator1]];
G2L["60"]["BackgroundTransparency"] = 0.65;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.Icon.Indicator1.UIGradient
G2L["61"] = Instance.new("UIGradient", G2L["60"]);
G2L["61"]["Rotation"] = -90;
G2L["61"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["61"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["62"] = Instance.new("TextLabel", G2L["5b"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextSize"] = 14;
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(0, 166, 0, 16);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[Expiration:]];
G2L["62"]["Position"] = UDim2.new(0.02459, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.laele.TextLabel
G2L["63"] = Instance.new("TextLabel", G2L["5b"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["TextSize"] = 14;
G2L["63"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(5, 255, 0);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Size"] = UDim2.new(0, 38, 0, 16);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Text"] = [[Never]];
G2L["63"]["Position"] = UDim2.new(0.29508, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp
G2L["64"] = Instance.new("TextButton", G2L["58"]);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 14;
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["BackgroundTransparency"] = 1;
G2L["64"]["Size"] = UDim2.new(0, 45, 0, 25);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[]];
G2L["64"]["Name"] = [[Load_Byp]];
G2L["64"]["Position"] = UDim2.new(0.77049, 0, 0.50746, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
G2L["65"] = Instance.new("LocalScript", G2L["64"]);



-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UIStroke
G2L["66"] = Instance.new("UIStroke", G2L["64"]);
G2L["66"]["Color"] = Color3.fromRGB(68, 68, 68);
G2L["66"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.UICorner
G2L["67"] = Instance.new("UICorner", G2L["64"]);
G2L["67"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.TextLabel
G2L["68"] = Instance.new("TextLabel", G2L["64"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["TextSize"] = 14;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["BackgroundTransparency"] = 1;
G2L["68"]["Size"] = UDim2.new(0, 31, 0, 19);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Text"] = [[LOAD]];
G2L["68"]["Position"] = UDim2.new(0.13333, 0, 0.08, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx
G2L["69"] = Instance.new("Frame", G2L["23"]);
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(23, 24, 27);
G2L["69"]["Size"] = UDim2.new(0, 244, 0, 67);
G2L["69"]["Position"] = UDim2.new(0.69961, 0, 0.10438, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Name"] = [[tx]];


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.UICorner
G2L["6a"] = Instance.new("UICorner", G2L["69"]);
G2L["6a"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.UIStroke
G2L["6b"] = Instance.new("UIStroke", G2L["69"]);
G2L["6b"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele
G2L["6c"] = Instance.new("Frame", G2L["69"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(18, 19, 21);
G2L["6c"]["Size"] = UDim2.new(0, 244, 0, 28);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Name"] = [[laele]];


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.UICorner
G2L["6d"] = Instance.new("UICorner", G2L["6c"]);
G2L["6d"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.UIStroke
G2L["6e"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6e"]["Color"] = Color3.fromRGB(52, 54, 59);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Nm
G2L["6f"] = Instance.new("TextLabel", G2L["6c"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["TextColor3"] = Color3.fromRGB(255, 0, 5);
G2L["6f"]["BackgroundTransparency"] = 1;
G2L["6f"]["Size"] = UDim2.new(0, 166, 0, 28);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Text"] = [[Synex_v2]];
G2L["6f"]["Name"] = [[Nm]];
G2L["6f"]["Position"] = UDim2.new(0.13934, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Icon
G2L["70"] = Instance.new("ImageLabel", G2L["6c"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["ImageColor3"] = Color3.fromRGB(35, 255, 0);
G2L["70"]["Image"] = [[rbxassetid://10723396954]];
G2L["70"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Name"] = [[Icon]];
G2L["70"]["Position"] = UDim2.new(0.02459, 0, 0.14286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Icon.Indicator1
G2L["71"] = Instance.new("Frame", G2L["70"]);
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["Size"] = UDim2.new(0, 24, 0, 23);
G2L["71"]["Position"] = UDim2.new(-0.10168, 0, -0.14419, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Name"] = [[Indicator1]];
G2L["71"]["BackgroundTransparency"] = 0.65;


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Icon.Indicator1.UIGradient
G2L["72"] = Instance.new("UIGradient", G2L["71"]);
G2L["72"]["Rotation"] = -90;
G2L["72"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.010, 0.04375),NumberSequenceKeypoint.new(1.000, 1),NumberSequenceKeypoint.new(1.000, 0)};
G2L["72"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(12, 255, 8)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Exp
G2L["73"] = Instance.new("TextLabel", G2L["6c"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextSize"] = 14;
G2L["73"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Size"] = UDim2.new(0, 166, 0, 16);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[Expiration:]];
G2L["73"]["Name"] = [[Exp]];
G2L["73"]["Position"] = UDim2.new(0.02459, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.laele.Nv
G2L["74"] = Instance.new("TextLabel", G2L["6c"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 14;
G2L["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(5, 255, 0);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["Size"] = UDim2.new(0, 38, 0, 16);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[Never]];
G2L["74"]["Name"] = [[Nv]];
G2L["74"]["Position"] = UDim2.new(0.29508, 0, 1.39286, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.Load_Sy
G2L["75"] = Instance.new("TextButton", G2L["69"]);
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["TextSize"] = 14;
G2L["75"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Size"] = UDim2.new(0, 45, 0, 25);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Text"] = [[]];
G2L["75"]["Name"] = [[Load_Sy]];
G2L["75"]["Position"] = UDim2.new(0.77049, 0, 0.50746, 0);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.Load_Sy.UIStroke
G2L["76"] = Instance.new("UIStroke", G2L["75"]);
G2L["76"]["Color"] = Color3.fromRGB(68, 68, 68);
G2L["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.Load_Sy.UICorner
G2L["77"] = Instance.new("UICorner", G2L["75"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.CoreGUI.Frame.ata.Menu.tx.Load_Sy.TextLabel
G2L["78"] = Instance.new("TextLabel", G2L["75"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["TextSize"] = 14;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Size"] = UDim2.new(0, 31, 0, 19);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Text"] = [[LOAD]];
G2L["78"]["Position"] = UDim2.new(0.13333, 0, 0.08, 0);


-- StarterGui.CoreGUI.Frame.ata.Frame
G2L["79"] = Instance.new("Frame", G2L["3"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Size"] = UDim2.new(0, 634, 0, 22);
G2L["79"]["Position"] = UDim2.new(0, 0, 1.01386, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Frame.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["79"]);
G2L["7a"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.ata.Frame.TextLabel
G2L["7b"] = Instance.new("TextLabel", G2L["79"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["TextSize"] = 14;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(90, 255, 0);
G2L["7b"]["BackgroundTransparency"] = 1;
G2L["7b"]["Size"] = UDim2.new(0, 70, 0, 21);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Text"] = [[Sy]];


-- StarterGui.CoreGUI.Frame.ata.Frame.TextLabel
G2L["7c"] = Instance.new("TextLabel", G2L["79"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Size"] = UDim2.new(0, 70, 0, 21);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Text"] = [[nex]];
G2L["7c"]["Position"] = UDim2.new(0.024, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Frame.TextLabel
G2L["7d"] = Instance.new("TextLabel", G2L["79"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Size"] = UDim2.new(0, 70, 0, 21);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Text"] = [[Licensed]];
G2L["7d"]["Position"] = UDim2.new(0.14826, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Frame.dys
G2L["7e"] = Instance.new("TextLabel", G2L["79"]);
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["TextSize"] = 14;
G2L["7e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["TextColor3"] = Color3.fromRGB(112, 255, 0);
G2L["7e"]["BackgroundTransparency"] = 1;
G2L["7e"]["Size"] = UDim2.new(0, 142, 0, 21);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Text"] = [[Customer]];
G2L["7e"]["Name"] = [[dys]];
G2L["7e"]["Position"] = UDim2.new(0.28076, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.ata.Frame.TextLabel
G2L["7f"] = Instance.new("TextLabel", G2L["79"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Size"] = UDim2.new(0, 36, 0, 21);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[to:]];
G2L["7f"]["Position"] = UDim2.new(0.23028, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.Notify
G2L["80"] = Instance.new("Frame", G2L["2"]);
G2L["80"]["Visible"] = false;
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
G2L["80"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["80"]["Position"] = UDim2.new(-0.03318, 0, 1.01646, 0);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Name"] = [[Notify]];


-- StarterGui.CoreGUI.Frame.Notify.UICorner
G2L["81"] = Instance.new("UICorner", G2L["80"]);
G2L["81"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.Notify.TopTudo
G2L["82"] = Instance.new("Frame", G2L["80"]);
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["82"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Name"] = [[TopTudo]];


-- StarterGui.CoreGUI.Frame.Notify.TopTudo.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.CoreGUI.Frame.Notify.TopTudo.UIStroke
G2L["84"] = Instance.new("UIStroke", G2L["82"]);
G2L["84"]["Color"] = Color3.fromRGB(81, 81, 81);
G2L["84"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.Notify.TopTudo.Title
G2L["85"] = Instance.new("TextLabel", G2L["82"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["TextSize"] = 14;
G2L["85"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["85"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["Size"] = UDim2.new(0, 192, 0, 19);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Text"] = [[Notify title]];
G2L["85"]["Name"] = [[Title]];
G2L["85"]["Position"] = UDim2.new(0.03434, 0, 0, 0);


-- StarterGui.CoreGUI.Frame.Notify.UIStroke
G2L["86"] = Instance.new("UIStroke", G2L["80"]);
G2L["86"]["Color"] = Color3.fromRGB(81, 81, 81);
G2L["86"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.CoreGUI.Frame.Notify.Content
G2L["87"] = Instance.new("TextLabel", G2L["80"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundTransparency"] = 1;
G2L["87"]["Size"] = UDim2.new(0, 166, 0, 30);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[Content]];
G2L["87"]["Name"] = [[Content]];
G2L["87"]["Position"] = UDim2.new(0.03434, 0, 0.38, 0);


-- StarterGui.CoreGUI.Frame.ata.LocalScript
local function C_4()
local script = G2L["4"];
	local UIS = game:GetService("UserInputService")
	local frame = script.Parent
	
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	-- TECLA QUE VAI ABRIR/FECHAR
	local TOGGLE_KEY = Enum.KeyCode.Insert
	
	-- Toggle do menu pela tecla Insert
	UIS.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == TOGGLE_KEY then
			frame.Visible = not frame.Visible
		end
	end)
	
	-- DRAG
	
	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
	
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
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end;
task.spawn(C_4);
-- StarterGui.CoreGUI.Frame.ata.chiti.tx.Executer.LocalScript
local function C_a()
local script = G2L["a"];
	local button = script.Parent
	local textBox = script.Parent.Parent.ScrollingFrame.Inp
	
	-- código que você quer bloquear
	local BLOCKED_CODE = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/zezinxmanny-eng/ASFDG/refs/heads/main/ATARS.lua"))()'
	
	button.MouseButton1Click:Connect(function()
		local code = textBox.Text
	
		-- impede executar exatamente o mesmo script
		if code == BLOCKED_CODE then
			textBox.Text = "nao pode executar o mesmo script"
			return
		end
	
		-- tenta compilar o código
		local func, err = loadstring(code)
	
		if func then
			-- executa
			func()
		else
			warn("Erro no código:", err)
		end
	end)
	
end;
task.spawn(C_a);
-- StarterGui.CoreGUI.Frame.ata.tab.Exec.LocalScript
local function C_19()
local script = G2L["19"];
	local b = script.Parent
	local uigrad_other = script.Parent.Parent.Menus.Indicator1.UIGradient
	local uigrad = script.Parent.Indicator1.UIGradient
	---Icons
	local MenuIcon = script.Parent.Parent.Menus.Ic
	local ExecIcon = script.Parent.Parent.Exec.Ic
	---Dependences
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	---Frames
	local MenuFrame = script.Parent.Parent.Parent.Menu
	local ExecFrame = script.Parent.Parent.Parent.chiti
	
	local function animateGradient(gradient, targetColor1, targetColor2, duration)
		local startColor1 = gradient.Color.Keypoints[1].Value
		local startColor2 = gradient.Color.Keypoints[2].Value
		local elapsed = 0
	
		local connection
		connection = RunService.RenderStepped:Connect(function(dt)
			elapsed = elapsed + dt
			local alpha = math.min(elapsed / duration, 1)
	
			local newColor1 = startColor1:Lerp(targetColor1, alpha)
			local newColor2 = startColor2:Lerp(targetColor2, alpha)
	
			gradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, newColor1),
				ColorSequenceKeypoint.new(1, newColor2)
			})
	
			if alpha >= 1 then
				connection:Disconnect()
			end
		end)
	end
	
	local function click()
		-- Mudar visibilidade dos frames
		ExecFrame.Visible = true
		MenuFrame.Visible = false
	
		local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local duration = 0.3
	
		-- Animar gradientes suavemente
		animateGradient(uigrad, Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 200, 0), duration) -- Exec verde
		animateGradient(uigrad_other, Color3.fromRGB(0, 0, 0), Color3.fromRGB(20, 20, 20), duration) -- Menu preto
	
		-- Tween nos ícones
		local execIconTween = TweenService:Create(ExecIcon, tweenInfo, {
			ImageColor3 = Color3.fromRGB(0, 255, 0)  -- Verde
		})
	
		local menuIconTween = TweenService:Create(MenuIcon, tweenInfo, {
			ImageColor3 = Color3.fromRGB(180, 180, 180)  -- Cinza claro
		})
	
		execIconTween:Play()
		menuIconTween:Play()
	end
	
	b.MouseButton1Click:Connect(click)
end;
task.spawn(C_19);
-- StarterGui.CoreGUI.Frame.ata.tab.Menus.LocalScript
local function C_1e()
local script = G2L["1e"];
	local b = script.Parent
	local uigrad_other = script.Parent.Parent.Exec.Indicator1.UIGradient
	local uigrad = script.Parent.Indicator1.UIGradient
	---Icons
	local MenuIcon = script.Parent.Parent.Menus.Ic
	local ExecIcon = script.Parent.Parent.Exec.Ic
	---Dependences
	local TweenService = game:GetService("TweenService")
	local RunService = game:GetService("RunService")
	---Frames
	local MenuFrame = script.Parent.Parent.Parent.Menu
	local ExecFrame = script.Parent.Parent.Parent.chiti
	
	local function animateGradient(gradient, targetColor1, targetColor2, duration)
		local startColor1 = gradient.Color.Keypoints[1].Value
		local startColor2 = gradient.Color.Keypoints[2].Value
		local elapsed = 0
	
		local connection
		connection = RunService.RenderStepped:Connect(function(dt)
			elapsed = elapsed + dt
			local alpha = math.min(elapsed / duration, 1)
	
			local newColor1 = startColor1:Lerp(targetColor1, alpha)
			local newColor2 = startColor2:Lerp(targetColor2, alpha)
	
			gradient.Color = ColorSequence.new({
				ColorSequenceKeypoint.new(0, newColor1),
				ColorSequenceKeypoint.new(1, newColor2)
			})
	
			if alpha >= 1 then
				connection:Disconnect()
			end
		end)
	end
	
	local function click()
		-- Mudar visibilidade dos frames
		ExecFrame.Visible = false
		MenuFrame.Visible = true
	
		local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local duration = 0.3
	
		-- Animar gradientes suavemente
		animateGradient(uigrad, Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 200, 0), duration) -- Menu verde
		animateGradient(uigrad_other, Color3.fromRGB(0, 0, 0), Color3.fromRGB(20, 20, 20), duration) -- Exec preto
	
		-- Tween nos ícones
		local menuIconTween = TweenService:Create(MenuIcon, tweenInfo, {
			ImageColor3 = Color3.fromRGB(0, 255, 0)  -- Verde
		})
	
		local execIconTween = TweenService:Create(ExecIcon, tweenInfo, {
			ImageColor3 = Color3.fromRGB(180, 180, 180)  -- Cinza claro
		})
	
		menuIconTween:Play()
		execIconTween:Play()
	end
	
	b.MouseButton1Click:Connect(click)
end;
task.spawn(C_1e);
-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx.Load_Sy.LocalScript
local function C_32()
local script = G2L["32"];
	local b = script.Parent
	local function synex ()
		loadstring(game:HttpGet("https://forsakken-api.vercel.app/fsk/Universal/kd91u3madvkczv.lua"))()
	end
	b.MouseButton1Click:Connect(synex)
end;
task.spawn(C_32);
-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
local function C_43()
local script = G2L["43"];
	local b = script.Parent
	local function bypass ()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/refs/heads/main/Source.lua"))()
	end
	b.MouseButton1Click:Connect(bypass)
end;
task.spawn(C_43);
-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
local function C_54()
local script = G2L["54"];
	local b = script.Parent
	local function bypass ()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/refs/heads/main/Source.lua"))()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end
	b.MouseButton1Click:Connect(bypass)
end;
task.spawn(C_54);
-- StarterGui.CoreGUI.Frame.ata.Menu.ScrollingFrame.tx2.Load_Byp.LocalScript
local function C_65()
local script = G2L["65"];
	local b = script.Parent
	local function bypass ()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/refs/heads/main/Source.lua"))()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Ketamine/refs/heads/main/Ketamine.lua"))()
	end
	b.MouseButton1Click:Connect(bypass)
end;
task.spawn(C_65);

return G2L["1"], require;
