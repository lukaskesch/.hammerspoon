-- Hello World
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Your Title", informativeText="Hello World"}):send()
  hs.alert.show("Hello World")
  print(hs.inspect("Test"))
end)

-- Reloads config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

-- Playes "Intro" song on spotify
hs.hotkey.bind({"alt", "shift"}, "Z", function()
  hs.spotify.playTrack("spotify:track:2usrT8QIbIk9y0NEtQwS4j")
end)

-- Playes "Coding Mode" playlist on spotify (Note: The id can be obtained from the spotify share url) and enables do not disturb mode 
hs.hotkey.bind({"alt"}, "Z", function()
  
  -- https://github.com/toy/blueutil
  -- Connects to the WH-1000XM5 headphones
  hs.execute("/opt/homebrew/bin/blueutil --connect 88-c9-e8-3b-20-66")

  -- Playes "Coding Mode" playlist on spotify
  hs.spotify.playTrack("spotify:playlist:37i9dQZF1DX5trt9i14X7j?si=805a4491da454409")

  -- Enables the do not disturb mode an all devices
  hs.shortcuts.run("Enable dnd")
end)


-- Focus VS Code
hs.hotkey.bind({"alt"}, "V", function()
  local win = hs.window.focusedWindow()
  hs.application.launchOrFocus("Visual Studio Code")
end)

-- Focus Vivaldi
hs.hotkey.bind({"alt"}, "W", function()
  local win = hs.window.focusedWindow()
  hs.application.launchOrFocus("Vivaldi")
end)