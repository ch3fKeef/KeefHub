local EventFunctions = {
    ToggleChasm = function(Data, ...)
        print(Data, ...)
    end,
}

--[[
local Chasms = {}

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
]]
