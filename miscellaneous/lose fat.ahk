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
Sleep 1000
fatburn = 5
l:
fatburn--
if fatburn = -1
{
    MsgBox, fat burner ranout
}
MouseMove, 500, 500
Click
Sleep 7000
StartTime := A_TickCount
Loop,
{
    aa := A_TickCount - StartTime
    if ( aa > 120000 )
    {
        Break
    }
    PixelSearch, x, y, 249, 132, 250, 134, 0x3A3A3A, 40, Fast ;Full Stamina
	If ErrorLevel = 1 ; If Found
	{
		Sendinput, {w up}{s up}w{w down}{up}
        Sleep 2000
        Loop,
        {
            PixelSearch, x, y, 45, 132, 46, 134, 0x3A3A3A, 40, Fast
            If ErrorLevel = 0
            {
                Send {w up}
                Break
            }
            aa := A_TickCount - StartTime
            if ( aa > 120000 )
            {
                Break
            }
        }
        aa := A_TickCount - StartTime
        if ( aa > 120000 )
        {
            Break
        }
	}
}
Goto, l

end::ExitApp