local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ProximityPromptService = game:GetService("ProximityPromptService")

local Window = Rayfield:CreateWindow({
   Name = "Blair Script V1",
   Icon = "cross",
   LoadingTitle = "epic blair script",
   LoadingSubtitle = "by PizzaBloxer",
   Theme = "Default",

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Blair"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Verification System",
      Subtitle = "Guess the key!1!11!",
      Note = "Hint: BlairDevs____",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"BlairDevsSuck"}
   }
})
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Exploits", "brain") -- Title, Image
local Cursed = Tab:CreateLabel("Cursed Object: Tarot Cards", 4483362458, Color3.fromRGB(0, 155, 0), false) -- Title, Icon, Color, IgnoreTheme
local FingerPrinties = Tab:CreateLabel("Ultra Violet: Waiting...", 4483362458, Color3.fromRGB(155, 155, 155), false) -- Title, Icon, Color, IgnoreTheme
local GorbGorb = Tab:CreateLabel("Ghost Orbs: No", 4483362458, Color3.fromRGB(155, 0, 0), false) -- Title, Icon, Color, IgnoreTheme
local Activity = Tab:CreateLabel("Activity: ???", 4483362458, Color3.fromRGB(0, 0, 0), false) -- Title, Icon, Color, IgnoreTheme
local GhostOrbs = false
local Button2 = Tab:CreateButton({
   Name = "Teleport to van",
   Callback = function()
   TP = game.Workspace.Map.Van.Primary
   playr = game.Players.LocalPlayer
   playr.Character:MoveTo(TP.CFrame.Position)
end,
}) -- this took so LONBG
local Button5 = Tab2:CreateButton({
   Name = "Spawn Boo-Boo Dolls",
   Callback = function()
   remoteEvent = game.ReplicatedStorage.Remotes.BooBooSpawnRemote
remoteEvent:FireServer()
end,
})
local Toggle = Tab2:CreateToggle({
   Name = "Farm Bluudud",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
   dolss = game.Workspace:GetChildren()
   for i,v in pairs(dolss) do
   if v.Name = "BooBooDoll" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
               wait(0.1)
               fireproximityprompt(v:WaitForChild("ProximityPrompt"))
end
         end
   end,
})
-- i hate this part
while wait(0.1) do
   if game.Workspace:FindFirstChild("SummoningCircle") then
   Cursed:Set("Cursed Object: Summoning Circle", 4483362458, Color3.fromRGB(0, 155, 0), false) -- Title, Icon, Color, IgnoreTheme
end
   if game.Workspace:FindFirstChild("Spirit Board") then
   Cursed:Set("Cursed Object: Ouija Board", 4483362458, Color3.fromRGB(0, 155, 0), false) -- Title, Icon, Color, IgnoreTheme
end
   if game.Workspace.Map.Prints:FindFirstChild("UV_Hand") or game.Workspace.Map.Prints:FindFirstChild("UV_Fingerprint") then
   FingerPrinties:Set("Ultra Violet: Yes", 4483362458, Color3.fromRGB(0, 155, 0), false) -- Title, Icon, Color, IgnoreTheme
end
   Activity:Set("Activity: " .. game.ReplicatedStorage.Activity.Value, 4483362458, Color3.fromRGB(0, 0, 0), false) -- Title, Icon, Color, IgnoreTheme
end
   if game.Workspace.Map.Orbs:FindFirstChild("OrbPart") then
   GorbGorb:Set("Ghost Orbs: Yes", 4483362458, Color3.fromRGB(50, 50, 50), false) -- Title, Icon, Color, IgnoreTheme
end
