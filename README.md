# Roblox Coordinate Display

A simple Roblox Lua script that displays your player's position coordinates in a GUI overlay. Perfect for use with Xeno or other Roblox exploits.

## Features

- ✅ Real-time X, Y, Z coordinate display
- ✅ Clean GUI with semi-transparent background
- ✅ Toggle visibility with F6 key
- ✅ Automatically handles character respawns
- ✅ Easy to customize

## Installation

1. Copy the `coordinate_display.lua` script
2. Paste it into Xeno or your Roblox exploit executor
3. Execute the script in-game
4. Press **F6** to toggle the coordinate display on/off

## Customization

### Change the toggle key
Replace this line:
```lua
local toggleKey = Enum.KeyCode.F6
```

With any key code, for example:
- `Enum.KeyCode.F7` - F7 key
- `Enum.KeyCode.Z` - Z key
- `Enum.KeyCode.Delete` - Delete key

### Change GUI position
Modify this line:
```lua
coordLabel.Position = UDim2.new(0, 10, 0, 10)
```
The numbers are: `(scale, offset_x, scale, offset_y)`. Currently set to top-left (10, 10).

### Change colors
Text color:
```lua
coordLabel.TextColor3 = Color3.fromRGB(0, 255, 0)  -- Green (RGB)
```

Background color:
```lua
coordLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Black (RGB)
```

### Change GUI size
```lua
coordLabel.Size = UDim2.new(0, 200, 0, 100)  -- Width: 200, Height: 100
```

## Usage

- Execute the script in-game
- Your coordinates appear in the top-left corner
- Press **F6** to hide/show the display
- Coordinates update in real-time as you move
- Works across respawns automatically

## License

Free to use and modify for personal use.
