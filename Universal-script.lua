-- START GAME SCRIPT
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Furm3y's Universal Scripts", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Infinite Yield", "FE Admin Commands", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

MainSection:NewButton("Rejoin Game", "Rejoins the game you are in", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)


--LOCAL PLAYER
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Walk faster", 200, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "Jump higher", 200, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WalkSpeed/JumpPower", "Resets to all defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)


--Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Lets you chat for other people", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/djBfk8Li'),true))()
end)
