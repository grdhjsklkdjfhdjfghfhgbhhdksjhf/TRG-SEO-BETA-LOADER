local Screen = script.Parent.Screen.Screen.SurfaceGui
local SendEvent = script.Parent.SendEvent
local RecieveEvent = script.Parent.RecieveEvent
local Net = script.Parent.Parent.Parent.Network
local Parcel = require(9428572121)
local Scan = script.Parent["Scan Handeler"]
local Tri = script.Parent.TriLight.TriLight
local STri = script.Parent.ScanLight
if Parcel:Whitelist("64057c1e93b2a5cbfc524ec5", "k5d86kl4psw6t6j2d4snkrhf657r") then
	Tri.Transparency = 0.2
	Tri.Material = Enum.Material.Neon
	Tri.Color = Color3.fromRGB(255, 255, 255)
	STri.Transparency = 0.2
	STri.Material = Enum.Material.Neon
	STri.Color = Color3.fromRGB(255, 255, 255)
	Scan.Disabled = true
	Screen.Boot.Visible = true
	Screen.Boot.Stage1.Visible = true
	wait(5)
	Screen.Boot.Stage1.Visible = false
	Screen.Boot.Stage2.Visible = true
	wait(5)
	Screen.Boot.Stage2.Visible = false
	Screen.Boot.Stage3.Visible = true
	wait(2)
	warn("Boot Done Connecting To Lanes")
	Screen.Boot.Visible = false
	Screen.LaneConnection.Visible = true
	Screen.LaneConnection.please.Visible = true
	wait(5)
	Screen.LaneConnection.Connecting.Visible = true
	wait(10)
	Screen.LaneConnection.Connecting.Visible = false
	Screen.LaneConnection.Done.Visible = true
	wait(3)
	Screen.LaneConnection.Visible = false
	Screen.Application.Visible = true
	Screen.Application.StartScreen.Visible = true
	Screen.Application.Interventions.Visible = true
	Screen.Application.Interventions.SystemMsgfoot.Visible = true
	wait(5)
	Screen.Application.Footer.Visible = true
	Screen.Application.Interventions.SystemMsgfoot.Visible = false
	Screen.Application.Interventions.Visible = false
	Scan.Disabled = false
	Tri.Color = Color3.fromRGB(2, 255, 2)
	STri.Color = Color3.fromRGB(2, 255, 2)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://12830273010"
	sound.Looped = false
	sound.Parent = workspace
	sound:Play()
	sound.Volume = 5
	
	Screen.Application.StartScreen.Start.Start.MouseButton1Click:Connect(function() -- Attach a function to your MouseButton1Click RBXScriptSignal

		Screen.Application.StartScreen.Visible = false
		Screen.Application.ScanScreen.Visible = true
		Screen.Application.ScanScreen.Start.Visible = true
	end)
	
	
	
else
	Screen.Boot.Visible = true
	warn("TRG | User Or Group not whitelisted for product: Self Checkout System")	
	Screen.Boot.LCS_Inv.Visible = true
end
