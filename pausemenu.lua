function AddTextEntry(key, value)
  Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
-- 🔧 Title Setup
  local emojiBefore = "" -- Emoji before name ⏸️/🎮/🔧
  local emojiAfter = "" -- Emoji after name ⏸️/🎮/🔧
  local title = "Fivem Roleplay" -- Normal text
  local colors = {
    "~r~", -- P (Red)
    "~o~", -- A (Orange)
    "~y~", -- U (Yellow)
    "~g~", -- Z (Green)
    "~b~", -- E (Blue)
    "~p~", -- M (Purple)
    "~c~", -- E (Gray)
    "~m~", -- N (Dark Gray)
    "~o~", -- U (Orange)
  }
  
  local titleSize = "~h~" -- Makes the text bold

  -- 🖍️ Generate title with colors
  local finalTitle = titleSize .. emojiBefore -- Add emoji before the title
  for i = 1, #title do
  local letter = title:sub(i, i)
  local color = colors[(i % #colors) + 1] -- Cycle through the colors
  finalTitle = finalTitle .. color .. letter
  end
  finalTitle = finalTitle .. emojiAfter -- Add emoji after the title
 
  -- 📌 Put text in the pause menu
  AddTextEntry('FE_THDR_GTAO', finalTitle)
 end)