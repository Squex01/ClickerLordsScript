local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/ClickerLordsScript/main/ClickerLords.lua')))()
local w = library:CreateWindow("Clicker Lords")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoClicker",function(bool)
    shared.toggle = bool
    AutoClicker = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

--Credits
u:Button("Relax",function()
    setclipboard("Relax")
end)

u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

if game:GetService("Players").LocalPlayer.PlayerGui.DisplayGui.CUIClone.CUI1:FindFirstChild("Button") then
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HACK.EXE"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    game:GetService("Players").LocalPlayer.PlayerGui.DisplayGui.CUIClone.CUI1.Button.Parent = ScreenGui
    for i,v in pairs(ScreenGui.Button:GetChildren()) do
        v.Visible = false
    end
end

while wait() do
    spawn(function()
        if AutoClicker == true then
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.Visible = true
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.ImageTransparency = 1
            game:service'VirtualUser':ClickButton1(Vector2.new())
        else
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.Visible = false
            game.Players.LocalPlayer:WaitForChild("PlayerGui")["HACK.EXE"].Button.ImageTransparency = 0
        end
    end)
    
    spawn(function()
        if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end)
end