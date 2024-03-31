local 2006Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))() local window = 2006Lib:Create(
"Name", -- Name here.
"Enabled", -- If you want draggable set here to "Enabled" if you dont want set to "Disabled".
"p" -- You can put any keybind here to open close.
) local tab1 = window:CreateTab("Tab1")
tab1:CreateButton("Button", function()
print("Hello World")
end) tab1:CreateToggle("Toggle", function(state)
if state then
print("Enabled!")
else
print("Disabled!")
end) tab1:CreateSlider("Slider", 0, 100, function(arg)
print(arg)
end) tab1:CreateTextbox("Textbox", function(a)
print(a)
end) tab1:CreateLabel("2006hub Presents")
tab1:CreateInfo("Your Script has Been Executed")
tab1:CreateWarning("Use at your own risk if you get banned not my fault")
tab1:CreateDropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function(selected)
print(selected)
end getgenv().selected = nil

function DetectOption()
if getgenv().selected == "Option 1" then
print("Setting walkspeed to 100!")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
elseif getgenv().selected == "Option 2" then
print("Setting jumppower to 100!")
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
elseif getgenv().selected == "Option 3" then
print("Resetting!")
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
tab2:CreateDropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function(selectedopt)
getgenv.selected = selectedopt
DetectOption()
end

local tab2 = window:CreateTab("Tab")
tab1:CreateButton("Destroy this tab", function()
tab1:DeleteTab()
end)
2006Lib:Close()
local 2006Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local key = "2006LibKey" -- Put your key here.
local window = 2006Lib:Create(
"Key System",
"Enabled"
"p"
)

local tab1 = window:CreateTab("Key System")
tab1:CreateWarning("Please put key to continue.")
tab1:CreateTextbox("Put key here:", function(a)
if a == key then
-- Put your code here to see what happens after you enter the correct key.
window:CreateTab("TestTab")
else
local warning = tab1:CreateWarning("Wrong key! Please try again.") -- If the key is wrong it will create a warning says "Wrong Key! Please try again." after 2 seconds it deletes. 
wait(2)
warning:Delete() 
end
end)
