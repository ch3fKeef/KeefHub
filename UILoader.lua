--Orion
local OrionLib = loadstring(game:HttpGet("https://twix.cyou/Orion.txt", true))()
local Window = OrionLib:MakeWindow({Name = "Keef Hub", TestMode = true, SaveConfig = true, ConfigFolder = "KeefHubConfiguration", IntroEnabled = true, IntroText = "injecting skidded exploit",})
local UIData = {}

--Globals
do 
    UIData.GlobalTab = Window:MakeTab(
        {
            Name = "Globals",
            Icon = "rbxassetid://93688535736287",
            TestersOnly = false,
        }
    )

    UIData.ESPSection = UIData.GlobalTab:AddSection({
        Name = "ESP",
    })

    UIData.ESPSection:AddToggle({
        Name = "Toggle Chasms",
        Default = false,
        Callback = function(value)
            OrionLib:MakeNotification({
                Name = "Player Chasms",
                Content = 'Player chasms toggled: ' .. tostring(value),
                Image = "rbxassetid://4483345998",
                Time = 5,
            })
        end,
    })
end

