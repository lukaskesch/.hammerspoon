hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Your Title", informativeText="Hello World"}):send()
  hs.alert.show("Hello World")
end)

-- Reloads config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

-- Playes song on spotify
hs.hotkey.bind({"alt"}, "Z", function()
  -- hs.spotify.play()
  -- hs.spotify.displayCurrentTrack()
  -- print(hs.inspect(hs.spotify.getCurrentTrackId()))
  hs.spotify.playTrack("spotify:track:2usrT8QIbIk9y0NEtQwS4j")
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