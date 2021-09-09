-- Converted by "Gui to Lua"
-- Made by Henry1887#6969
-- If u want to have faster autofarm, go to line 240 and change the wait time between every teleport example: wait(3). (WARNING If u make it faster than it is at default, then your game can crash)
-- WARNING: DONT AUTOFARM ON A WORLD U DONT HAVE ACCESS TO, YOU WILL GET BANNED!!!!

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local worldtext = Instance.new("TextLabel")
local world = Instance.new("TextLabel")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local autostatus = Instance.new("TextLabel")
local autofarm = Instance.new("TextButton")
local close = Instance.new("TextButton")
local warning = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
main.BackgroundTransparency = 0.600
main.Position = UDim2.new(0.178935453, 0, 0.397379905, 0)
main.Size = UDim2.new(0, 204, 0, 136)

worldtext.Name = "worldtext"
worldtext.Parent = main
worldtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
worldtext.BackgroundTransparency = 1.000
worldtext.Size = UDim2.new(0, 200, 0, 27)
worldtext.Font = Enum.Font.GothamBold
worldtext.Text = "World:"
worldtext.TextColor3 = Color3.fromRGB(0, 0, 0)
worldtext.TextSize = 14.000

world.Name = "world"
world.Parent = main
world.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
world.BackgroundTransparency = 1.000
world.Position = UDim2.new(0.588235319, 0, 0, 0)
world.Size = UDim2.new(0, 25, 0, 27)
world.Font = Enum.Font.GothamBold
world.Text = "1"
world.TextColor3 = Color3.fromRGB(0, 0, 0)
world.TextSize = 14.000

up.Name = "up"
up.Parent = main
up.BackgroundColor3 = Color3.fromRGB(55, 255, 0)
up.BackgroundTransparency = 0.700
up.BorderSizePixel = 0
up.Position = UDim2.new(0.602941215, 0, 0.198529407, 0)
up.Size = UDim2.new(0, 18, 0, 18)
up.Font = Enum.Font.GothamSemibold
up.Text = ">"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = main
down.BackgroundColor3 = Color3.fromRGB(55, 255, 0)
down.BackgroundTransparency = 0.700
down.BorderSizePixel = 0
down.Position = UDim2.new(0.387254924, 0, 0.198529407, 0)
down.Size = UDim2.new(0, 18, 0, 18)
down.Font = Enum.Font.GothamSemibold
down.Text = "<"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

autostatus.Name = "autostatus"
autostatus.Parent = main
autostatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
autostatus.BackgroundTransparency = 1.000
autostatus.Position = UDim2.new(0.186274514, 0, 0.411764711, 0)
autostatus.Size = UDim2.new(0, 146, 0, 24)
autostatus.Font = Enum.Font.GothamBold
autostatus.Text = "AutoFarm: OFF"
autostatus.TextColor3 = Color3.fromRGB(0, 0, 0)
autostatus.TextSize = 14.000

autofarm.Name = "autofarm"
autofarm.Parent = main
autofarm.BackgroundColor3 = Color3.fromRGB(55, 255, 0)
autofarm.BackgroundTransparency = 0.700
autofarm.BorderSizePixel = 0
autofarm.Position = UDim2.new(0.387254894, 0, 0.66911763, 0)
autofarm.Size = UDim2.new(0, 62, 0, 18)
autofarm.Font = Enum.Font.Gotham
autofarm.Text = "ON/OFF"
autofarm.TextColor3 = Color3.fromRGB(0, 0, 0)
autofarm.TextSize = 14.000

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.BackgroundTransparency = 0.700
close.BorderSizePixel = 0
close.Position = UDim2.new(0.911764741, 0, 0, 0)
close.Size = UDim2.new(0, 18, 0, 18)
close.Font = Enum.Font.GothamBold
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

warning.Name = "warning"
warning.Parent = main
warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warning.BackgroundTransparency = 1.000
warning.Position = UDim2.new(0.887254894, 0, -0.573529482, 0)
warning.Size = UDim2.new(0, 204, 0, 27)
warning.Font = Enum.Font.GothamBlack
warning.Text = "WARNING: Do not autofarm on a world u cannot access, u will get banned."
warning.TextColor3 = Color3.fromRGB(255, 0, 0)
warning.TextSize = 14.000

TextButton.Parent = warning
TextButton.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
TextButton.BackgroundTransparency = 0.900
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.45588237, 0, -0.703703701, 0)
TextButton.Size = UDim2.new(0, 19, 0, 19)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function PJLIST_fake_script() -- main.drag 
	local script = Instance.new('LocalScript', main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
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
end
coroutine.wrap(PJLIST_fake_script)()
local function JLWQG_fake_script() -- main.worldchanger 
	local script = Instance.new('LocalScript', main)

	local up = script.Parent.up
	local down = script.Parent.down
	local world =script.Parent.world
	
	up.MouseButton1Down:Connect(function()
		local world_number = tonumber(world.Text)
		if world_number < 30 then
			world_number = world_number + 1
		end
		world.Text = tostring(world_number)
	end)
	
	down.MouseButton1Down:Connect(function()
		local world_number = tonumber(world.Text)
		if world_number > 1 then
			world_number = world_number - 1
		end
		world.Text = tostring(world_number)
	end)
end
coroutine.wrap(JLWQG_fake_script)()
local function YQMLIJB_fake_script() -- main.close 
	local script = Instance.new('LocalScript', main)

	local close = script.Parent.close
	local screengui =script.Parent.Parent
	
	close.MouseButton1Down:Connect(function()
		screengui:Destroy()
	end)
end
coroutine.wrap(YQMLIJB_fake_script)()
local function FKLH_fake_script() -- main.autofarm 
	local script = Instance.new('LocalScript', main)

	local btn = script.Parent.autofarm
	local world = script.Parent.world
	local status = script.Parent.autostatus
	local on = false
	
	btn.MouseButton1Down:Connect(function()
		local world_number = world.Text
		if on == true then
			on = false
			status.Text = "AutoFarm: OFF"
		else
			on = true
			status.Text = "AutoFarm: ON"
			while on do
				for i,v in pairs(game.Workspace.Map.Stages.Boosts[world_number]:GetChildren()) do
					if on == false then
						break
					end
					local obj = "0"
					if world_number == "10" then
						obj = "0.30000001192093"
					end
					if world_number == "25" then
						obj = "0.30000001192093"
					end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v[obj].CFrame
					wait(0.35)
				end
				wait(1)
			end
		end
	end)
end
coroutine.wrap(FKLH_fake_script)()
local function UEJHF_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local text = script.Parent.Parent
	local btn = script.Parent
	
	btn.MouseButton1Down:Connect(function()
		text.Visible = false
	end)
end
coroutine.wrap(UEJHF_fake_script)()
