wait(5)

----------------BİLLBOARD-GUI-------------------------
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

---WELD-TORSO---
local WeldTORSO = Instance.new("WeldConstraint")
WeldTORSO.Parent = game.Workspace.efsane14010["Torso"]
WeldTORSO.Part0 = game.Workspace.efsane14010["Torso"]
WeldTORSO.Part1 = Copy["Torso"]
--------------CLONE-CHARACTER-PROPERTIES-----------
Copy.Name = "efsane"
Copy.Parent = game.Workspace.efsane14010.HumanoidRootPart
Copy.HumanoidRootPart.CanCollide = false
Copy.Torso.CanCollide = false

--CanCollide
Copy["Right Leg"].CanCollide = false
Copy["Left Leg"].CanCollide = false
Copy["Right Arm"].CanCollide = false
Copy["Left Arm"].CanCollide = false
Copy.Torso.CanCollide = false
Copy.HumanoidRootPart.CanCollide = false
Copy.Head.CanCollide = false
--Massless
Copy["Right Leg"].Massless = true
Copy["Left Leg"].Massless = true
Copy["Right Arm"].Massless = true
Copy["Left Arm"].Massless = true
Copy.Torso.Massless = true
Copy.HumanoidRootPart.Massless = true
Copy.Head.Massless = true

wait(1)
Copy.Torso.Anchored = true
Copy.Head.CanCollide = false
wait(3)
Copy.Torso.Anchored = false
Copy.Head.BillboardGui:Destroy()
--POSITION
Copy.Torso.Position = Copy.Torso.Position + Vector3.new(0,1,5)

-------------------WALKİNG-ANIMATION----------------
local WalkingAnimation = "http://www.roblox.com/asset/?id=14449295313"
Copy.Animate.run.RunAnim.AnimationId = WalkingAnimation
