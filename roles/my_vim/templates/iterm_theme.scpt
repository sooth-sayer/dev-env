-- Detect light or dark theme in iTerm2 by background color

tell application "iTerm2"
  set bg to get background color of current session of current window
end tell

-- unpack
set {r, g, b} to bg

-- Compute brightness
set brightness to (r + g + b) / 3

-- Threshold: midpoint of 0–65535
if brightness < 32768 then
    return "dark"
else
    return "light"
end if
