local CoreGui = game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

if CoreGui:FindFirstChild("DiscordNotifyUI") then
    CoreGui.DiscordNotifyUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DiscordNotifyUI"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 350, 0, 150)
MainFrame.BorderSizePixel = 0

local FrameCorner = Instance.new("UICorner")
FrameCorner.CornerRadius = UDim.new(0, 10)
FrameCorner.Parent = MainFrame

local MessageLabel = Instance.new("TextLabel")
MessageLabel.Parent = MainFrame
MessageLabel.BackgroundTransparency = 1
MessageLabel.Size = UDim2.new(1, 0, 0.6, 0)
MessageLabel.Font = Enum.Font.GothamBold
MessageLabel.Text = "Join Discord to get the latest scripts!"
MessageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageLabel.TextSize = 18
MessageLabel.TextWrapped = true

local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
CloseButton.AnchorPoint = Vector2.new(0.5, 0)
CloseButton.Position = UDim2.new(0.5, 0, 0.65, 0)
CloseButton.Size = UDim2.new(0.4, 0, 0.25, 0)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 16

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = CloseButton

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
setclipboard("https://discord.gg/RpbE6YTdez")
