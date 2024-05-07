local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lane Menu V1", "DarkTheme")
local Main = Window:NewTab("Local")
local MainSection = Main:NewSection("Local")

MainSection:NewLabel("Player")

local function playerLoop()
   while true do
	MainSection:NewSlider("WalkSpeed", "Run fast", 350, 16, function(s) -- 350 Máximo | 16 Mínimo 
	    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	
	MainSection:NewSlider("JumpPower", "Jump Highest", 500, 50, function(s) -- 500 Máximo | 500 Mínimo 
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
	end)

	wait(0.0001)
	end
end
-- Chamar funcao loop
playerLoop()

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Menu Settings")

SettingsSection:NewKeybind("Menu Open", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
