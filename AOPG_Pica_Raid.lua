wait(5)
-- Check Place ID
local placeId = game.PlaceId

if placeId == 8396586868 then
    wait(10)
    game:GetService("TeleportService"):Teleport(8396586868, game:GetService("Players").LocalPlayer)
    
elseif placeId == 12697622192 then
	-- execute action 1
	print("Executing action 1")
	repeat
        wait(1)
        pica = game.Workspace.Dungeons:FindFirstChild("Pica")
    until pica ~= nil
	-- Toggle Sprint
    game:GetService("ReplicatedStorage").Remotes.toggleSprint:FireServer()
    wait(0.5)
    
    -- Tween To Raid
    repeat wait() until game:IsLoaded()
    local part = game.Workspace.Dungeons:FindFirstChild("Pica")
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    if part then
        local targetPosition = part.Position + Vector3.new(0, 5, 0)
        humanoid:MoveTo(targetPosition)
        humanoid.MoveToFinished:Wait() -- wait for the humanoid to reach the destination
    else
        warn("Could not find Pica part in Workspace/Dungeons.")
    end
    
elseif placeId == 9812430518
	-- execute action 2
	then print("Executing action 2")
	
	-- Skip Loading Screen
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
    
    local introScreen = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Introduction")
    
    introScreen:Destroy()
    
    -- Wait until Pica Boss Spawn
    local picaBoss = nil
    
    repeat
        wait(1)
        picaBoss = workspace.Entities:FindFirstChild("Pica")
    until picaBoss ~= nil
    
    -- Get the Closest Part
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    local closestPart = nil
    local closestDistance = math.huge
    
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide then
            local distance = (part.Position - humanoidRootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPart = part
            end
        end
    end
    
    -- In Raid Buffs
    -- Enable Flame Sword
    if closestPart then
        local args = {
            [1] = "Sword Style",
            [2] = "Y",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
    end
    wait(2)
    
    -- Enable Awekened Fishman
    if closestPart then
        local args = {
            [1] = "Fighting Style",
            [2] = "Y",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }
    
        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
    end
    wait(3)
    
    -- Enable Limitless
    if closestPart then
        local args = {
            [1] = "Support Style",
            [2] = "Y",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }
    
        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
    end
    wait(2)
    

    -- Enable Haki
    if closestPart then
        local args = {
            [1] = "Fighting Style",
            [2] = "G",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }
    
        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
    end
    wait(3)
    
    -- Enable Ope Room
    if closestPart then
        local args = {
            [1] = "Devil Fruit",
            [2] = "Y",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
    end
    wait(1)
    
    -- Toggle Sprint
    game:GetService("ReplicatedStorage").Remotes.toggleSprint:FireServer()
    wait(1)
    
    -- Tween To Boss
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local picaBoss = game.Workspace.Entities["Pica"].PrimaryPart

    local function loop20()
        while true do
            player.Character.Humanoid:MoveTo(picaBoss.Position)
            wait(0.1)
        end
        wait(1)
    end
    
    -- Spam Attacks
    -- define the first loop
    local function loop1()
        -- Spam "E" Attack of Gryphon
       while true do
           local args = {
                [1] = "Sword Style",
                [2] = "E",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
                [4] = closestPart,
                [5] = 5
            }
    
            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait 1 second before firing the next ability
          print("Loop 1 is running")
       end
    end

    -- define the sixth loop
    local function loop6()
        -- Spam "M1" Attack of Jolly Rapier
       while true do
           local args = {
                [1] = "Gun Style",
                [2] = "MouseButton1",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 4 is running")
       end
    end
    
    -- define the seventh loop
    local function loop7()
        -- Spam Observation Haki
       while true do
           local args = {
                [1] = "Gun Style",
                [2] = "T",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait 1 second before firing the next ability
          print("Loop 5 is running")
       end
    end
    
    -- define the eighth loop
    local function loop8()
        -- Spam Infinity
       while true do
           local args = {
                [1] = "Support Style",
                [2] = "G",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait 1 second before firing the next ability
          print("Loop 5 is running")
       end
    end

    local function loop9()
        -- Spam "M1" Attack of Ope
       while true do
           local args = {
                [1] = "Devil Fruit",
                [2] = "MouseButton1",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 6 is running")
       end
    end
    
    local function loop10()
        -- Spam "Q" Attack of Ope
       while true do
           local args = {
                [1] = "Devil Fruit",
                [2] = "Q",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 7 is running")
       end
    end
    
    local function loop11()
        -- Spam "E" Attack of Ope
       while true do
           local args = {
                [1] = "Devil Fruit",
                [2] = "E",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 8 is running")
       end
    end
    
    local function loop12()
        -- Spam "R" Attack of Fishman Karate V2
       while true do
           local args = {
                [1] = "Fighting Style",
                [2] = "R",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 9 is running")
       end
    end

    local function loop17()
        -- Spam "M1" Attack of Sword
       while true do
           local args = {
                [1] = "Sword Style",
                [2] = "MouseButton1",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 12 is running")
       end
    end
    
    local function loop18()
        -- Spam "M1" Attack of Fighting Style
       while true do
           local args = {
                [1] = "Fighting Style",
                [2] = "MouseButton1",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 13 is running")
       end
    end
    
    local function loop19()
        -- Spam "M1" Attack of Support Style
       while true do
           local args = {
                [1] = "Support Style",
                [2] = "MouseButton1",
                [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0.5, -0.1, 0)),
                [4] = closestPart,
                [5] = 5
            }

            game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
            wait() -- wait before firing the next ability
          print("Loop 14 is running")
       end
    end
    
    -- start the loops in separate threads
    if closestPart then
        coroutine.wrap(loop1)()
        coroutine.wrap(loop6)()
        coroutine.wrap(loop7)()
        coroutine.wrap(loop8)()
        coroutine.wrap(loop10)()
        coroutine.wrap(loop11)()
        coroutine.wrap(loop12)()
        coroutine.wrap(loop17)()
        coroutine.wrap(loop18)()
        coroutine.wrap(loop19)()
        coroutine.wrap(loop20)()
    end
else
    end
