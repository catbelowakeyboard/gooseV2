local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Goose | Indev",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Goose Hub Devolopers",
   LoadingSubtitle = "by Goose77 and Haker",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Goose Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local versions = Window:CreateTab("Versions", "dna-off") -- Title, Image
local Section = versions:CreateSection("Select the version you want to use")
local Divider = versions:CreateDivider()
local Button = versions:CreateButton({
   Name = "Premium version",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/catbelowakeyboard/gooseV2/refs/heads/main/PremiumGooseKey.lua'))()
   end,
})
local Button = versions:CreateButton({
   Name = "Free version",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/catbelowakeyboard/gooseV2/refs/heads/main/FreeGoose.lua'))()
   end,
})
