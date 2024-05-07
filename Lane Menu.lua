local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lane Menu", "Ocean")

-- Script Hub 
local Main = Window:NewTab("Script Hub")
local MainSection = Main:NewSection("Game Script")

MainSection:NewButton("Menu LT2", "Script Lua Ware para o jogo Lumber Tycoon 2", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end)


-- Script 2
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Lane Menu V1", "DarkTheme")
-- Script Hub 
local Main = Window:NewTab("Local")
local MainSection = Main:NewSection("Local")

MainSection:NewLabel("Player")

MainSection:NewSlider("WalkSpeed", "Run fast", 350, 16, function(s) -- 350 Máximo | 16 Mínimo 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpPower", "Jump Highest", 500, 50, function(s) -- 500 Máximo | 500 Mínimo 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Menu Settings")

SettingsSection:NewKeybind("Menu Open", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)