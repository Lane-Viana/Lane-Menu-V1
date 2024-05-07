local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lane Menu V1", "DarkTheme")

-- Main
local Main = Window:NewTab("Local")
local MainSection = Main:NewSection("Local")

MainSection:NewLabel("Player")

MainSection:NewSlider("WalkSpeed", "Run fast", 350, 16, function(s) -- 350 Máximo | 16 Mínimo 
    LoopPlayerSpeed(s)
end)

MainSection:NewSlider("JumpPower", "Jump Highest", 500, 50, function(s) -- 500 Máximo | 500 Mínimo 
    LoopPlayerJump(s)
end)

-- Loops
local function LoopPlayerSpeed(s)
    while true do
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        wait(0.0001)
    end
end

local function LoopPlayerJump(s)
    while true do
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        wait(0.0001)
    end
end

-- Settings
local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Menu Settings")

SettingsSection:NewKeybind("Menu Open", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)

SettingsSection:NewButton("Boost FPS", "Boost your fps using anti lag script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LegiteriumZ/RobloxScript/main/binh%20hub%20fps%20booster%20v1.lua"))()
end)
