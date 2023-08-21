
----------------BÄ°LLBOARD-GUI-------------------------
local billboardgui = Instance.new("BillboardGui")
billboardgui.Size = UDim2.new(0, 200,0, 50)
billboardgui.ExtentsOffset = Vector3.new(0,5,0)
billboardgui.Parent = game.Workspace.efsane14010.Head
local TextLabel = Instance.new("TextLabel")
TextLabel.FontFace = Font.new("rbxasset://fonts/families/Creepster.json", Enum.FontWeight.Light)
TextLabel.Size = UDim2.new(0, 200,0, 50)
TextLabel.Text =  "Efsane14010"
TextLabel.TextScaled = true
TextLabel.RichText = true
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Parent = game.Workspace.efsane14010.Head.BillboardGui

---------------CLONE-CHARACTER----------------------
local CharacterClone = workspace.efsane14010
local WasArchivable = CharacterClone.Archivable

CharacterClone.Archivable = true
local Copy = CharacterClone:Clone()
CharacterClone.Archivable = WasArchivable 

--------------WELD-PARTS---------------------
local WeldTorso = Instance.new("Weld")
WeldTorso.Parent = game.Workspace.efsane14010.Torso
WeldTorso.Part0 = game.Workspace.efsane14010.Torso
WeldTorso.Part1 = Copy.Torso

local WeldHead = Instance.new("Weld")
WeldHead.Parent = game.Workspace.efsane14010.Head
WeldHead.Part0 = game.Workspace.efsane14010.Head
WeldHead.Part1 = Copy.Head

local WeldRightArm = Instance.new("Weld")
WeldRightArm.Parent = game.Workspace.efsane14010["Right Arm"]
WeldRightArm.Part0 = game.Workspace.efsane14010["Right Arm"]
WeldRightArm.Part1 = Copy["Right Arm"]

local WeldLeftArm = Instance.new("Weld")
WeldLeftArm.Parent = game.Workspace.efsane14010["Left Arm"]
WeldLeftArm.Part0 = game.Workspace.efsane14010["Left Arm"]
WeldLeftArm.Part1 = Copy["Left Arm"]

local WeldRightLeg = Instance.new("Weld")
WeldRightLeg.Parent = game.Workspace.efsane14010["Right Leg"]
WeldRightLeg.Part0 = game.Workspace.efsane14010["Right Leg"]
WeldRightLeg.Part1 = Copy["Right Leg"]

local WeldLeftLeg = Instance.new("Weld")
WeldLeftLeg.Parent = game.Workspace.efsane14010["Left Leg"]
WeldLeftLeg.Part0 = game.Workspace.efsane14010["Left Leg"]
WeldLeftLeg.Part1 = Copy["Left Leg"]

--------------OWNER-TRANSPARENCY--------------------
game.Workspace.efsane14010.DevAwardsGold.Handle.Transparency = 1
game.Workspace.efsane14010.Head.Transparency = 1
game.Workspace.efsane14010["Left Arm"].Transparency = 1
game.Workspace.efsane14010["Right Arm"].Transparency = 1
game.Workspace.efsane14010["Right Leg"].Transparency = 1
game.Workspace.efsane14010["Left Leg"].Transparency = 1
game.Workspace.efsane14010.Torso.Transparency = 1
game.Workspace.efsane14010.Head.face:Destroy()
game.Workspace.efsane14010.Animate:Destroy()

--------------CLONE-CHARACTER-PROPERTIES-----------
Copy.Name = "efsane"
Copy.Parent = game.Workspace.efsane14010.Torso
Copy.Humanoid:Destroy()
Copy.Animate:Destroy()
Copy.Torso.CanCollide = false

--CanCollide
Copy["Right Leg"].CanCollide = false
Copy["Left Leg"].CanCollide = false
Copy["Right Arm"].CanCollide = false
Copy["Left Arm"].CanCollide = false
Copy.Torso.CanCollide = false
Copy.HumanoidRootPart:Destroy()
Copy.Head.CanCollide = false

--Massless
Copy["Right Leg"].Massless = true
Copy["Left Leg"].Massless = true
Copy["Right Arm"].Massless = true
Copy["Left Arm"].Massless = true
Copy.Torso.Massless = true
Copy.Head.Massless = true
Copy.DevAwardsGold.Handle.Massless = true

wait(1)
Copy.Torso.Anchored = true
Copy.Head.CanCollide = false
wait(3)
Copy.Torso.Anchored = false
Copy.Head.BillboardGui:Destroy()
--POSITION
Copy.Torso.Position = Copy.Torso.Position + Vector3.new(0,3,0)



-------------------REMOTE-EVENTS--------------------
local FlyEvent = Instance.new("RemoteEvent", owner.Character)
FlyEvent.Name = "💀"
--Fly--
FlyEvent.OnServerEvent:Connect(function(plr)
	WeldHead.C0 =  WeldHead.C0:Lerp(CFrame.fromEulerAnglesXYZ(-45, 0, 0),0.1)
	WeldHead.C0 =  WeldHead.C0:Lerp(CFrame.new(0,-1.6,-2.2),0.1)

	WeldTorso.C0 =  WeldTorso.C0:Lerp(CFrame.Angles(math.rad(100), 0, 0),0.1)

	WeldRightArm.C0 =  WeldRightArm.C0:Lerp(CFrame.Angles(math.rad(-75), 0, math.rad(15)),0.1)

	WeldLeftArm.C0 =  WeldLeftArm.C0:Lerp(CFrame.Angles(math.rad(-75), 0, math.rad(-15)),0.1)

	WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.Angles(math.rad(-180), 0, 0),0.1)
	WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.new(0,3.5,4),0.1)

	WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.Angles(math.rad(-180), 0, 0),0.1)
	WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.new(0,3.5,3.5),0.1)
end)

local WalkEvent = Instance.new("RemoteEvent", owner.Character)
WalkEvent.Name = "✊"
--Walk
WalkEvent.OnServerEvent:Connect(function(plr)
		task.wait(0.4)
		WeldTorso.C0 =  WeldTorso.C0:Lerp(CFrame.new(0,0.5,0),0.5)
		WeldHead.C0 =  WeldHead.C0:Lerp(CFrame.new(0,0.5,0),0.5)

		WeldRightArm.C0 =  WeldRightArm.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(-30), 0),0.5)
		WeldRightArm.C0 =  WeldRightArm.C0:Lerp(CFrame.new(0,0.5,0),0.5)

		WeldLeftArm.C0 =  WeldLeftArm.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(30), 0),0.5)
		WeldLeftArm.C0 =  WeldLeftArm.C0:Lerp(CFrame.new(0,0.5,0),0.5)

		WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(-30), 0),0.5)
		WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.new(0,1,0.5),0.5)

		WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(30), 0),0.5)
		WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.new(0,1,0.5),0.5)

		task.wait(0.4)
		WeldTorso.C0 =  WeldTorso.C0:Lerp(CFrame.new(0,0.6,0),0.5)
		WeldHead.C0 =  WeldTorso.C0:Lerp(CFrame.new(0,0.6,0),0.5)

		WeldRightArm.C0 =  WeldRightArm.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(-30), 0),0.5)
		WeldRightArm.C0 =  WeldRightArm.C0:Lerp(CFrame.new(0,0.6,0),0.5)

		WeldLeftArm.C0 =  WeldLeftArm.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(30), 0),0.5)
		WeldLeftArm.C0 =  WeldLeftArm.C0:Lerp(CFrame.new(0,0.6,0),0.5)

		WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(-30), 0),0.5)
		WeldRightLeg.C0 =  WeldRightLeg.C0:Lerp(CFrame.new(0,1.1,0.5),0.5)

		WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.Angles(math.rad(-45), math.rad(30), 0),0.5)
		WeldLeftLeg.C0 =  WeldLeftLeg.C0:Lerp(CFrame.new(0,1.1,0.5),0.5)
end)

NLS([[
local UserInputService = game:GetService('UserInputService')

local FlyEvent = owner.Character:WaitForChild("💀")
local FlyDebounce = false
UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.E then
		if FlyDebounce == false then
				FlyDebounce = true
			task.spawn(function()
				while FlyDebounce == true do
					wait()
					FlyEvent:FireServer()
				end 
			end)
		else
			FlyDebounce = false
		end

	end
end)

local WalkEvent = owner.Character:WaitForChild("✊")
local WalkDebounce = false
UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Q then
		if WalkDebounce == false then
		WalkDebounce = true
			task.spawn(function()
				while WalkDebounce == true do
					wait(0.9)
					WalkEvent:FireServer()
				end
			end)
		else
			WalkDebounce = false	
		end
	end
end)
]], owner.Character)
