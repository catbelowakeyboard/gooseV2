local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "GooseHub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Premium",
   LoadingSubtitle = "by Haker and Goose77",
   Theme = "AmberGlow", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "goosepremiumkey"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Premium Key System",
      Subtitle = "Enter your premium key.",
      Note = "Buy Premium from our discord.", -- Use this to tell the user how to get a key
      FileName = "GPK", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Pkey0","Pkey1","Pkey2"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local premium = Window:CreateTab("Premium", "search") -- Title, Image
local Section = premium:CreateSection("Select your premium versions")
local Divider = premium:CreateDivider()
local Button = premium:CreateButton({
   Name = "Latest Version",
   Callback = function()
   Rayfield:Notify({
   Title = "Version In devolopment",
   Content = "The version is still in development.",
   Duration = 6.5,
   Image = "file-warning",
})
   end,
})
local Button = premium:CreateButton({
   Name = "go back",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/catbelowakeyboard/gooseV2/refs/heads/main/MainGoose.lua'))()
   end,
})
