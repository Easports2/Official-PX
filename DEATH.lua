local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "DEV ENGINE",
	LoadingTitle = "Wallahi c'est vrai",
	LoadingSubtitle = "Ce titre pete sa grand mere, nan?",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Reborn Goofy scirpt"
	},
	Discord = {
		Enabled = true,
		Invite = "m4jrkcVyxZ", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Login",
		Subtitle = ")=<",
		Note = "Vasi connecte toi vasy vasy on l'entend moins ta grande gueule",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = loadstring(game:HttpGet("https://pastefy.app/bFk9ODGZ/raw"))() -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

local MainTab = Window:CreateTab("Admin", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
	Title = "Welcome aboard, captain.",
	Content = "K to hide menu lil chinga",                                                                                               
	Duration = 5,
	Image = 4483362458,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Azeee!",
			Callback = function()
				print("haha yes")
			end
		},
	},
})

local Toggle = MainTab:CreateToggle({
	Name = "FreeCam",
	CurrentValue = false,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Freecam.Enabled = Value
	end,
	
})

local Button = MainTab:CreateButton({
	Name = "Marcher sur les limite de map",
	Callback = function()
		for i,v in game:GetService("ReplicatedStorage"):FindFirstChild("Districts"):GetChildren() do
			if v:isA("Folder") then
				if v:GetAttribute("OffLimits") == true then
					v:SetAttribute("OffLimits", false)
				end
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Give Les Premium Gamepasses",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrDTFolder = game.ReplicatedStorage.PlayerData:FindFirstChild(plrName)
		local premium = PlrDTFolder:FindFirstChild("Premium")

		for i, v in premium:GetChildren() do
			local IR = v:FindFirstChild("InfiniteRespawn")
			local RD = v:FindFirstChild("Radar")
			local FT = v:FindFirstChild("FastTravel")

			if IR then
				IR.Value = true
			end;

			if RD then
				RD.Value = true
			end;

			if FT then
				FT.Value = true
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainTab = Window:CreateTab("Gear", 95291509366536) -- Title, Image

local MainSection = MainTab:CreateSection("Grappler")

local Button = MainTab:CreateButton({
	Name = "Base Grappler",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level",0)
				v:SetAttribute("Tree", 0)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Yank Grappler")

local Button = MainTab:CreateButton({
	Name = "Yank Grappler lv 1 :I",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 1)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Yank Grappler lv 2 :o",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 2)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Yank Grappler lv 3 <:O",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 3)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Swing Grappler")

local Button = MainTab:CreateButton({
	Name = "Swing Grappler lv 1",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 1)
				v:SetAttribute("Tree", 2)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Swing Grappler lv 2",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 2)
				v:SetAttribute("Tree", 2)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Swing Grappler lv 3",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Grappler" then
				v:SetAttribute("Level", 3)
				v:SetAttribute("Tree", 2)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Glove")

local Button = MainTab:CreateButton({
	Name = "Base Glove",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Glove" then
				v:SetAttribute("Level",0)
				v:SetAttribute("Tree", 0)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Drifter Glove")

local Button = MainTab:CreateButton({
	Name = "Drifter lv 1",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Glove" then
				v:SetAttribute("Level", 1)
				v:SetAttribute("Tree", 2)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Drifter lv 2",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Glove" then
				v:SetAttribute("Level", 2)
				v:SetAttribute("Tree", 2)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Climber Glove")

local Button = MainTab:CreateButton({
	Name = "Climber lv 1",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Glove" then
				v:SetAttribute("Level", 1)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Climber lv 2",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "Glove" then
				v:SetAttribute("Level", 2)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Zipline Hook")

local Button = MainTab:CreateButton({
	Name = "Base Zipline Hook",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "ZiplineHook" then
				v:SetAttribute("Level", 0)
				v:SetAttribute("Tree", 0)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainSection = MainTab:CreateSection("Mechanized Zipline Hook")

local Button = MainTab:CreateButton({
	Name = "Mechanized Zipline Hook lv 1",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "ZiplineHook" then
				v:SetAttribute("Level", 1)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local Button = MainTab:CreateButton({
	Name = "Mechanized Zipline Hook lv 2",
	Callback = function()
		local plrName = game.Players.LocalPlayer.Name
		local PlrRTDFolder = game.ReplicatedStorage.PlayerRuntimeData:FindFirstChild(plrName)

		for i, v in PlrRTDFolder.Inventory:GetChildren() do
			if v:GetAttribute("Name") == "ZiplineHook" then
				v:SetAttribute("Level", 2)
				v:SetAttribute("Tree", 1)           
			end
		end
		-- The function that takes place when the button is pressed
	end,
})

local MainTab = Window:CreateTab("Teleports", 93412115764653) -- Title, Image
local MainSection = MainTab:CreateSection("Downtown")

local Button = MainTab:CreateButton({
	Name = "Spawn",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3743.47974, 318.043854, -78.7720337)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local Button = MainTab:CreateButton({
	Name = "Apollo",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2806.08374, 908.638184, 1128.48157)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local Button = MainTab:CreateButton({
	Name = "Vertigo",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3588.84399, 1277.78223, -397.412933)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local Button = MainTab:CreateButton({
	Name = "GL Tower",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2570.59717, 660.894714, -325.327881)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local MainSection = MainTab:CreateSection("Dirwik")

local Button = MainTab:CreateButton({
	Name = "PRK Tech",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1951.85693, 536.513611, -36.5253258)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local Button = MainTab:CreateButton({
	Name = "Artemis",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1786.06042, 1748.91895, 1670.724)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end

		-- Code
		Teleport(Location)

	end,
})

local MainSection = MainTab:CreateSection("NPCs")

local Button = MainTab:CreateButton({
	Name = "Petra",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1679.29858, 652.152283, -1.57595384)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location



		end

		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Derek",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3104.397216796875, 409.9674987792969, 321.4864501953125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Julian",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3515.172119140625, 254.05686950683594, 82.220947265625)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Mantra",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2645.8701171875, 573.28662109375, 626.5604248046875)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Mike",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2978.46875, 479.0711669921875, -219.735595703125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local MainTab = Window:CreateTab("Transmitters", 93333716734548)
local MainSection = MainTab:CreateSection("Downtown")

local Button = MainTab:CreateButton({
	Name = "1",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3588.7578125, 1296.8004150390625, -384.82125854492193)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "2",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2291.301513671875, 749.9000854492188, -241.1690673828125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "3",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2797.76220703125, 927.5316772460938, 1129.3724365234375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local MainSection = MainTab:CreateSection("Dirwik")

local Button = MainTab:CreateButton({
	Name = "1",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1753.138916015625, 980.0789184570312, 917.0564575195312)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "2",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1514.375, 764.8596801757812, -248.7701416015625)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "3",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1667.9228515625, 1785.385986328125, 1635.9173583984375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local MainSection = MainTab:CreateSection("Fragment")

local Button = MainTab:CreateButton({
	Name = "1",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3923.56591796875, 1282.59619140625, 940.1091918945312)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location


		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "2",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4698.4677734375, 1278.83056640625, -583.9688110351562)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local MainTab = Window:CreateTab("XP Routers", 109395995934792)
local MainSection = MainTab:CreateSection("All Routers")

local XP = workspace.Routers
local counter = 1

for i,v in XP:GetDescendants() do 
	if v:IsA("Part") then

	local Button = MainTab:CreateButton({
		Name = "Router" .. counter,
		counter = counter + 1,
		
		Callback = function()
			-- Settings
			local Location = v.Position
			-- Services
			local Players = game:GetService("Players")

			-- Variables
			local LocalPlayer: Player = Players.LocalPlayer
			local Character: Model = LocalPlayer.Character
			local RootPart: Part = Character.HumanoidRootPart

			-- Functions
			function Teleport(Location)

				RootPart.CFrame = CFrame.new(Location)

			end
			-- Code
			Teleport(Location)
			end
		
	})
	end
end


local MainTab = Window:CreateTab("Time Trials", 130227788055320)
local MainSection = MainTab:CreateSection("Downtown")

local Button = MainTab:CreateButton({
	Name = "Genesis, Plat: 19",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3399.8701171875, 95.781005859375, -226.1974334716797)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Solar, Plat: 19.5",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3156.9697265625, 407.0712890625, 285.986328125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Vestibule, Plat: 10.5 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3320.0966796875, 239.20294189453125, -550.167724609375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Riser, Plat: 10.75 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3955.95947265625, 271.0712890625, 332.89239501953125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Glass, Plat: 10.25 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3737.957275390625, 334.1266784667969, -21.276123046875)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Crystal, Plat: 10.5 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3559.61572265625, 353.071044921875, -157.81787109375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local MainSection = MainTab:CreateSection("Dirwik")

local Button = MainTab:CreateButton({
	Name = "Celsius, Plat: 12sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2130.6357421875, 422.9739074707031, -665.1212158203125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Martyr, Plat: 12.5",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1326.4708251953125, 519.542236328125, -1135.175537109375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Sawdust, Plat: 16.5",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2302.2646484375, 635.4703369140625, 2561.633056640625)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Neon Bold, Plat: 20",
	Callback = function()
		-- Settings
		local Location = CFrame.new(2036.6907958984375, 373.29046630859375, 2324.779052734375)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Circulation, Plat: 14",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1829.57080078125, 430.04547119140625, -895.6082763671875)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Flow, Plat: 16",
	Callback = function()
		-- Settings
		local Location = CFrame.new(1336.6663818359375, 520.3484497070312, -892.681884765625)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local MainSection = MainTab:CreateSection("Fragement")

local Button = MainTab:CreateButton({
	Name = "Grip, Plat: 17 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(3860.912353515625, 455.36126708984375, 968.2117309570312)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Umbrel, Plat: 21 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4291.40625, 524.535400390625, 1703.2178955078125)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Ascension, Plat: 12 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4399.310546875, 599.8378295898438, 483.0516662597656)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Needle, Plat: 13 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4285.333984375, 283.05438232421875, 469.2325744628906)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local Button = MainTab:CreateButton({
	Name = "Faith, Plat: 15 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(5019.72705078125, 438.23431396484375, -809.2295532226562)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})

local MainSection = MainTab:CreateSection("Out Of Bound")

local Button = MainTab:CreateButton({
	Name = "Carbon, Plat: 12 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4947.798828125, 349.0547180175781, 675.3221435546875)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})
local Button = MainTab:CreateButton({
	Name = "Fiber, Plat: 14 sec",
	Callback = function()
		-- Settings
		local Location = CFrame.new(4125.01123046875, 560.0443725585938, 1761.4775390625)

		-- Services
		local Players = game:GetService("Players")

		-- Variables
		local LocalPlayer: Player = Players.LocalPlayer
		local Character: Model = LocalPlayer.Character
		local RootPart: Part = Character.HumanoidRootPart

		-- Functions
		function Teleport(Location: CFrame)

			RootPart.CFrame = Location

		end
		-- Code
		Teleport(Location)
	end,
})
