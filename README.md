# Taskbar Hider

A lightweight AutoHotkey utility for hiding the Windows taskbar and revealing it temporarily when needed.

## What it does

When the script starts, it hides the Windows taskbar.

To reveal the taskbar temporarily:

1. Move the mouse to the very bottom edge of the primary display.
2. Click the left mouse button.
3. The taskbar appears for 10 seconds.
4. It is hidden again automatically.

When the script exits normally, the taskbar is restored.

## Requirements

- Windows 10 or Windows 11
- AutoHotkey v1.1

## Usage

1. Install AutoHotkey v1.1.
2. Download or clone this repository.
3. Run `Taskbar Hider.ahk`.
4. Exit the script from the AutoHotkey tray icon when you want to stop it.

## Configuration

Two values near the top of the script can be adjusted:

```ahk
ShowDuration := 10000
EdgeThreshold := 2
```

- `ShowDuration` controls how long the taskbar remains visible, in milliseconds.
- `EdgeThreshold` controls how close the cursor must be to the bottom edge.

## Notes

The utility hides both the primary and secondary Windows taskbars when possible.

If Windows Explorer is restarted while the script is running, taskbar behavior may need to be refreshed by restarting the script.

## License

Add the license you want to use for this repository before publishing or distributing modified versions.
