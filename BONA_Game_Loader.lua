--// BONA GAME LOADER
--// Auto-detects the current Roblox game by PlaceId.
--// Each game's code is inside its own Load function.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local Games = {
    [122216176958450] = {
        Name = "Steal A Seed!",
        Load = function()
            task.spawn(function()
                print("Steal A Seed - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/steal-a-seed/refs/heads/main/steal_a_seed.lua"))()
            end)
            task.spawn(function()
                print("Steal A Seed - main started")
            end)
        end
    },

    [127082754898219] = {
        Name = "Survive Lava for Animals",
        Load = function()
            task.spawn(function()
                print("Survive Lava - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/Survive-lava-for-animals/refs/heads/main/survive_lava_for_animals.lua"))()
            end)
            task.spawn(function()
                print("Survive Lava - main started")
            end)
        end
    },

    [84376037812256] = {
        Name = "Climb for eggs!",
        Load = function()
            task.spawn(function()
                print("Climb for eggs - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/Climb-for-eggs/refs/heads/main/BONA_Climb_For_Egg.lua"))()
            end)
            task.spawn(function()
                print("Climb for eggs - main started")
            end)
        end
    },

    [140067658687251] = {
        Name = "Rope an animal",
        Load = function()
            task.spawn(function()
                print("Rope an animal - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/Rope-an-egg/refs/heads/main/BONA_Rope_an_Egg.lua"))()
            end)
            task.spawn(function()
                print("Rope an animal - main started")
            end)
        end
    },

    [114640202062357] = {
        Name = "Swing Obby for Brainrots!",
        Load = function()
            task.spawn(function()
                print("Swing Obby - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/swing-obby-for-Brainrot/refs/heads/main/BONA_Teleport_Swing_Obby.lua"))()
            end)
            task.spawn(function()
                print("Swing Obby - main started")
            end)
        end
    },

    [26838733] = {
        Name = "Catalog Heaven",
        Load = function()
            task.spawn(function()
                print("Catalog Heaven - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/heaven-catalog-/refs/heads/main/BONA_Gear.lua"))()
            end)
            task.spawn(function()
                print("Catalog Heaven - main started")
            end)
        end
    },

    [112999934412261] = {
        Name = "Greedy Fish Stealer",
        Load = function()
            task.spawn(function()
                print("Greedy Fish - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/Greedy-fish-stealer/refs/heads/main/BONA_Greedy_Fish_Stealer.lua"))()
            end)
            task.spawn(function()
                print("Greedy Fish - main started")
            end)
        end
    },

    [134951244280326] = {
        Name = "Climb For Brainrots",
        Load = function()
            task.spawn(function()
                print("Climb For Brainrots - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/Climb-for-Brainrot/refs/heads/main/BONA_Climb_for_Brainrot.lua"))()
            end)
            task.spawn(function()
                print("Climb For Brainrots - main started")
            end)
        end
    },

    [138485603458691] = {
        Name = "Dig for Dinos! 🦕",
        Load = function()
            task.spawn(function()
                print("Dig for Dinos - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/dig-for-dino/refs/heads/main/BONA_Teleport.lua"))()
            end)
            task.spawn(function()
                print("Dig for Dinos - main started")
            end)
        end
    },

    [103854444055060] = {
        Name = "Silent Assassins",
        Load = function()
            task.spawn(function()
                print("Silent Assassins - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/silent-assassin-/refs/heads/main/BONA_Silent_Assassins.lua"))()
            end)
            task.spawn(function()
                print("Silent Assassins - main started")
            end)
        end
    },

    [108567435288296] = {
        Name = "Anime Ability Arena",
        Load = function()
            task.spawn(function()
                print("Anime Ability Arena - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/anime-ability-arena/refs/heads/main/anime-ability-arena.lua"))()
            end)
            task.spawn(function()
                print("Anime Ability Arena - main started")
            end)
        end
    },

    [5044920251] = {
        Name = "Wall Hop Practice",
        Load = function()
            task.spawn(function()
                print("Wall Hop Practice - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/AUTO-Wall-HOP/refs/heads/main/BONA_Wallhop.lua"))()
            end)
            task.spawn(function()
                print("Wall Hop Practice - main started")
            end)
        end
    },

    [17321628486] = {
        Name = "NO JUMPING OBBY",
        Load = function()
            task.spawn(function()
                print("NO JUMPING OBBY - task started")
                loadstring(game:HttpGet("https://raw.githubusercontent.com/BONA-SOMS/bypass-jump/refs/heads/main/BONA_JUMP_BACK.lua"))()
            end)
            task.spawn(function()
                print("NO JUMPING OBBY - main started")
            end)
        end
    }
}

local gui = Instance.new("ScreenGui")
gui.Name = "BONA_GameLoader"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "Main"
frame.Size = UDim2.fromOffset(330, 210)
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Parent = gui

local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 14)
frameCorner.Parent = frame

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, -20, 0, 40)
title.Position = UDim2.fromOffset(10, 8)
title.BackgroundTransparency = 1
title.Text = "BONA GAME LOADER"
title.TextSize = 21
title.Font = Enum.Font.GothamBold
title.Parent = frame

local status = Instance.new("TextLabel")
status.Name = "Status"
status.Size = UDim2.new(1, -30, 0, 65)
status.Position = UDim2.fromOffset(15, 52)
status.BackgroundTransparency = 1
status.TextSize = 17
status.Font = Enum.Font.Gotham
status.TextWrapped = true
status.Parent = frame

local placeIdLabel = Instance.new("TextLabel")
placeIdLabel.Name = "PlaceId"
placeIdLabel.Size = UDim2.new(1, -30, 0, 25)
placeIdLabel.Position = UDim2.fromOffset(15, 112)
placeIdLabel.BackgroundTransparency = 1
placeIdLabel.Text = "PlaceId: " .. tostring(game.PlaceId)
placeIdLabel.TextSize = 13
placeIdLabel.Font = Enum.Font.Gotham
placeIdLabel.Parent = frame

local loadButton = Instance.new("TextButton")
loadButton.Name = "Load"
loadButton.Size = UDim2.new(1, -50, 0, 45)
loadButton.Position = UDim2.fromOffset(25, 150)
loadButton.Text = "LOAD"
loadButton.TextSize = 17
loadButton.Font = Enum.Font.GothamBold
loadButton.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 9)
buttonCorner.Parent = loadButton

local selectedGame = Games[game.PlaceId]

if selectedGame then
    status.Text = "GAME FOUND\n" .. selectedGame.Name
    loadButton.Text = "LOAD"
    loadButton.Active = true
    loadButton.AutoButtonColor = true
else
    status.Text = "GAME NOT SUPPORTED"
    loadButton.Text = "NOT SUPPORTED"
    loadButton.Active = false
    loadButton.AutoButtonColor = false
end

loadButton.MouseButton1Click:Connect(function()
    if not selectedGame then
        return
    end

    loadButton.Active = false
    loadButton.Text = "LOADING..."
    status.Text = "LOADING\n" .. selectedGame.Name

    local success, err = pcall(function()
        selectedGame.Load()
    end)

    if success then
        status.Text = "LOADED\n" .. selectedGame.Name
        loadButton.Text = "LOADED"
    else
        status.Text = "LOAD ERROR\n" .. tostring(err)
        loadButton.Text = "RETRY"
        loadButton.Active = true
        loadButton.AutoButtonColor = true
    end
end)
