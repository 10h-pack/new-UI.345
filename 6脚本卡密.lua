local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local BlacklistedPlayers = {
    ["q9494979sksnxbzj5"] = true,
}

local function IsBlacklisted(player)
    return BlacklistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer
local isLocalPlayerBlacklisted = IsBlacklisted(localPlayer)

if isLocalPlayerBlacklisted then
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，你被加入了黑名单",
        Duration = 7,
    })
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，10秒后踢出",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/new-UI.345/refs/heads/main/webhook"))()
    task.wait(10)
    game:GetService("Players").LocalPlayer:Kick('你被加入了黑名单')
else
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，检测完毕，欢迎使用6脚本，感谢支持",
        Duration = 7,
    })

    local gui = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local textBox = Instance.new("TextBox")
    local checkButton = Instance.new("TextButton")
    local destroyButton = Instance.new("TextButton")

    gui.Parent = game.Players.LocalPlayer.PlayerGui
    frame.Size = UDim2.new(0, 200, 0, 140)
    frame.Position = UDim2.new(0.5, -100, 0.5, -70)
    frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    frame.Parent = gui

    textBox.Size = UDim2.new(0, 180, 0, 30)
    textBox.Position = UDim2.new(0.5, -90, 0, 20)
    textBox.PlaceholderText = "请输入指定文字"
    textBox.Parent = frame

    checkButton.Size = UDim2.new(0, 100, 0, 30)
    checkButton.Position = UDim2.new(0.5, -50, 0, 70)
    checkButton.Text = "验证"
    checkButton.Parent = frame

    destroyButton.Size = UDim2.new(0, 100, 0, 30)
    destroyButton.Position = UDim2.new(0.5, -50, 0, 110)
    destroyButton.Text = "销毁GUI"
    destroyButton.Parent = frame

    checkButton.MouseButton1Click:Connect(function()
        if textBox.Text == "6 Script" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/new-UI.345/refs/heads/main/blacksmith.lua"))()
        else
            StarterGui:SetCore("SendNotification", {
                Title = "验证失败",
                Text = "输入的文字不正确",
                Duration = 5,
            })
        end
    end)

    destroyButton.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)
end
