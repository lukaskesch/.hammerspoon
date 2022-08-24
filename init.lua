hs.hotkey.bind({"alt"}, "V", function()
  local win = hs.window.focusedWindow()
  hs.application.launchOrFocus("Visual Studio Code")
end)

hs.hotkey.bind({"alt"}, "W", function()
  local win = hs.window.focusedWindow()
  hs.application.launchOrFocus("Vivaldi")
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Your Title", informativeText="Hello World"}):send()
end)