--Orion
local OrionLib = loadstring(game:HttpGet("https://twix.cyou/Orion.txt", true))()

--Services
local Debris = game:GetService("Debris")
local Players = game:GetService("Players")

--Data
local SurfaceFaces = {
    Enum.NormalId.Top,
    Enum.NormalId.Back,
    Enum.NormalId.Left,
    Enum.NormalId.Front,
    Enum.NormalId.Right,
    Enum.NormalId.Bottom
}
local Chasms = {}

local Events = {
    CloseEvent = function()
        OrionLib:MakeNotification({
            Name = "Hub Action",
            Content = "User minimized internal hub",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end,
}

local Window = OrionLib:MakeWindow({Name = "Keef Hub", TestMode = true, SaveConfig = true, ConfigFolder = "KeefHubConfiguration", IntroEnabled = true, IntroText = "injecting skidded exploit", })

local AftermathTab = Window:MakeTab(
    {
        Name = "Globals",
        Icon = "rbxassetid://93688535736287",
        TestersOnly = false,
    }
)

local ESPSection = AftermathTab:AddSection({
    Name = "ESP",
})

AftermathTab:AddToggle({
    Name = "Toggle Chasms",
    Default = false,
    Callback = function(value)
        OrionLib:MakeNotification({
            Name = "Player Chasms",
            Content = 'Player chasms toggled: ' .. tostring(value),
            Image = "rbxassetid://4483345998",
            Time = 5,
        })

        if value == true then
            for _,v in pairs(Players:GetPlayers()) do
                if v.Character and v ~= Players.LocalPlayer then
                    if workspace:FindFirstChild(v.Name) then
                        for _,k in pairs(v.Character:GetChildren()) do
                            if k:IsA("Part") or k:IsA("MeshPart") or k:IsA("BasePart") then
                                for i = 1,#SurfaceFaces do
                                    local SG = Instance.new("SurfaceGui")
                                    SG.Face = SurfaceFaces[i]
									SG.AlwaysOnTop = true
                                    local Surface = Instance.new("Frame")
                                    Surface.Size = UDim2.new(1,0,1,0)
                                    Surface.BackgroundColor3 = Color3.fromRGB(255, 57, 60)
                                    Surface.Parent = SG
                                    SG.Parent = k
                                    table.insert(Chasms, SG)
                                end
                            end
                        end
                    end
                end
            end
        else
            for i = 1,#Chasms do
                Debris:AddItem(Chasms[i],0)
            end
        end
    end,
})

