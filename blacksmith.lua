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
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/new-UI.345/refs/heads/main/6%E4%B8%BB%E8%8F%9C%E5%8D%95%E5%8A%A0%E5%AF%86.txt"))()
