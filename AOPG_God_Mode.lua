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

local function loop1()
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

local function loop2()
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

if closestPart then
    coroutine.wrap(loop1)()
    coroutine.wrap(loop2)()
end