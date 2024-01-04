wait(5)
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

 -- Spam Attacks
-- define the first loop
local function loop1()
    -- Spam "E" Attack of Gun
   while true do
       local args = {
            [1] = "Gun Style",
            [2] = "E",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
        wait() -- wait 1 second before firing the next ability
   end
end

-- define the first loop
local function loop2()
    -- Spam "R" Attack of Gun
   while true do
       local args = {
            [1] = "Gun Style",
            [2] = "R",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
        wait() -- wait 1 second before firing the next ability
   end
end

-- define the first loop
local function loop3()
    -- Spam "A" Attack of Gun
   while true do
       local args = {
            [1] = "Gun Style",
            [2] = "A",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
        wait() -- wait 1 second before firing the next ability
   end
end


-- define the sixth loop
local function loop7()
    -- Spam "M1" Attack of Gun
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
   end
end

-- define the seventh loop
local function loop8()
    -- Spam Observation Haki
   while true do
       local args = {
            [1] = "Support Style",
            [2] = "T",
            [3] = CFrame.new(player.Character.HumanoidRootPart.Position + Vector3.new(0, -10, 0)),
            [4] = closestPart,
            [5] = 5
        }

        game:GetService("ReplicatedStorage").Remotes.requestAbility:FireServer(unpack(args))
        wait() -- wait 1 second before firing the next ability
   end
end

-- define the eighth loop
local function loop9()
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
   end
end

local function loop10()
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
   end
end

local function loop14()
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
   end
end

local function loop15()
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
   end
end

local function loop16()
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
   end
end

-- start the loops in separate threads
if closestPart then
    coroutine.wrap(loop1)()
    coroutine.wrap(loop2)()
    coroutine.wrap(loop3)()
    coroutine.wrap(loop7)()
    coroutine.wrap(loop8)()
    coroutine.wrap(loop9)()
    coroutine.wrap(loop10)()
    coroutine.wrap(loop14)()
    coroutine.wrap(loop15)()
    coroutine.wrap(loop16)()
end
