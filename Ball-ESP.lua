--[BETA] Goal! Ball ESP Altxria#7302
local RunService = game:GetService("RunService")
RunService.Stepped:Connect(function()
    local balls = game.Workspace:GetChildren()
    local balls2 = game.Workspace.Ignore:GetChildren()
    for i, v in ipairs(balls) do
        if v.Name == "Bola" then
            for e, a in ipairs(v:GetChildren()) do
                if a.Name == "Part" then
                    a:Destroy()
                end
            end
            local box = Instance.new("Part")
            box.Position = v.Ball.Position
            box.Anchored = true
            box.Size = v.Size + Vector3.new(.35, .35, .35)
            box.Parent = v
            box.Shape = "Ball"
            box.CanCollide = false
            box.Material = "Neon"
            wait(0.0001)
            box.Destroy()
        end
    end
    for i, v in ipairs(balls2) do
        if v.ClassName == "Model" then
            local children = v:GetChildren()
                for e, a in ipairs(children) do
                    if a.name == "Bola" then
                    for p, b in ipairs(a:GetChildren()) do
                        if b.Name == "Part" then
                            b:Destroy()
                        end
                    end
                    local box = Instance.new("Part")
                    box.Position = a.Ball.Position
                    box.Size = a.Size + Vector3.new(.35, .35, .35)
                    box.Parent = a
                    box.Anchored = true
                    box.Shape = "Ball"
                    box.CanCollide = false
                    box.Material = "Neon"
                    wait(0.0001)
                    box:Destroy()
                end
            end
        end
    end
end)
