local NEVERWIN = loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/UI/refs/heads/main/NeverWin"))() local KeySystem = NEVERWIN:KeySystem("6 脚本卡密", "https://10h-pack.github.io/", function(key) local valid_key = "6 Script" return key == valid_key end) KeySystem:Correct(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/new-UI.345/refs/heads/main/blacksmith.lua"))() game.StarterGui:SetCore("SendNotification", { Title = "验证成功", Text = "脚本已执行", Duration = 5, }) end end)
