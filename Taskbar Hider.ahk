; Taskbar Hider
; Hides the Windows taskbar while the script is running.
; Clicking the bottom edge of the primary display reveals it temporarily.

#NoEnv
#SingleInstance Force
#Persistent
DetectHiddenWindows, On
SetBatchLines, -1

ShowDuration := 10000  ; milliseconds
EdgeThreshold := 2     ; pixels from bottom edge

OnExit, RestoreTaskbar

HideTaskbar()
SetTimer, WatchMouse, 100
return

WatchMouse:
MouseGetPos, xpos, ypos
SysGet, ScreenHeight, 1

if (ypos > ScreenHeight - EdgeThreshold && GetKeyState("LButton", "P"))
{
    ShowTaskbar()
    Sleep, %ShowDuration%
    HideTaskbar()
}
return

RestoreTaskbar:
ShowTaskbar()
ExitApp
return

HideTaskbar()
{
    WinHide, ahk_class Shell_TrayWnd
    WinHide, ahk_class Shell_SecondaryTrayWnd
}

ShowTaskbar()
{
    WinShow, ahk_class Shell_TrayWnd
    WinShow, ahk_class Shell_SecondaryTrayWnd
}
