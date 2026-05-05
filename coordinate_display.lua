-- Coordinate Display GUI for Roblox
-- Place this in a LocalScript

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CoordinateGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create TextLabel for coordinates
local coordLabel = Instance.new("TextLabel")
coordLabel.Name = "CoordinateLabel"
coordLabel.Size = UDim2.new(0, 200, 0, 100)
coordLabel.Position = UDim2.new(0, 10, 0, 10)
coordLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
coordLabel.BackgroundTransparency = 0.5
coordLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
coordLabel.TextSize = 18
coordLabel.Font = Enum.Font.GothamBold
coordLabel.TextXAlignment = Enum.TextXAlignment.Left
coordLabel.TextYAlignment = Enum.TextYAlignment.Top
coordLabel.Visible = true
coordLabel.Parent = screenGui

-- Toggle visibility with a key (default: F6)
local toggleKey = Enum.KeyCode.F6
local guiVisible = true

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == toggleKey then
        guiVisible = not guiVisible
        coordLabel.Visible = guiVisible
    end
end)

-- Update coordinates every frame
RunService.RenderStepped:Connect(function()
    if character and humanoidRootPart then
        local position = humanoidRootPart.Position
        local x = math.round(position.X * 100) / 100
        local y = math.round(position.Y * 100) / 100
        local z = math.round(position.Z * 100) / 100
        
        coordLabel.Text = string.format("Position:\nX: %.2f\nY: %.2f\nZ: %.2f", x, y, z)
    end
end)

-- Handle character respawn
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    humanoidRootPart = character:WaitForChild("HumanoidRootPart")
end)