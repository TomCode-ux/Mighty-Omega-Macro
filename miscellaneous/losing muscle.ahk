#SingleInstance, force
#NoEnv
#MaxThreadsPerHotkey, 2
SetBatchLines, -1
CoordMode, Pixel, Window
CoordMode, Mouse, Window
if WinExist("Ahk_exe RobloxPlayerBeta.exe")
{
    WinActivate
    WinMove, Ahk_exe RobloxPlayerBeta.exe,,,, 800, 599 
}
else
{
    MsgBox,,Vivace's Macro,Roblox not active,3
    ExitApp
}
Sleep 100
Send, {shift}
Loop,
{
	Sendinput, {w up}{s up}w{w down}{up}
        Sleep 4000
        Send {w up}
}


end::ExitApp
