local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lane Menu V1", "DarkTheme")

-- Tab
local Main = Window:NewTab("Local")
local Settings = Window:NewTab("Settings")

-- Label
MainSection:NewLabel("Player")

-- Section
local SettingsSection = Settings:NewSection("Menu Settings")

-- Functions & Keybinds
MainSection:NewSlider("WalkSpeed", "Run fast", 350, 16, function(s) -- 350 Máximo | 16 Mínimo 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
	
MainSection:NewSlider("JumpPower", "Jump Highest", 500, 50, function(s) -- 500 Máximo | 500 Mínimo 
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)


SettingsSection:NewKeybind("Menu Open", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)

-- Button
SettingsSection:NewButton("Boost FPS", "Boost your fps using anti lag script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegiteriumZ/RobloxScript/main/binh%20hub%20fps%20booster%20v1.lua"))()
end)
