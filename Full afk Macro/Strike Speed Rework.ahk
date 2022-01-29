#maxThreadsPerHotkey, 2
Loop, 3
{	
	CenterWindow("ahk_exe RobloxPlayerBeta.exe")
	Sleep 100
}
CenterWindow(WinTitle)
{	
	WinGetPos,,, Width, Height, %WinTitle%
}

removetooltip() 
{
    tooltip
}

IfNotExist, %A_ScriptDir%\bin2
{
    msgbox,, file missing,Look like you didn't extract file,3
    ExitApp 
}

;InputBox, gym, What Gym are you at?, Answer: kure/ taek / box / karate
;if ErrorLevel = 1 
;{
;    ExitApp
;}

;If not (gym = "kure" or gym = "taek")
;{
;    tooltip, Look like the %gym% not exist in this version of macro
;    SetTimer, reload1, -3000
;    return
;}


InputBox, logs, how many ss you want to do?, recommended for 500 for 400+ ss
If ErrorLevel = 1
{
    ExitApp
}


end::reload

f1::
macro_on := !macro_on
if (macro_on)
{
    CoordMode, Mouse, Window
    CoordMode, Pixel, Window
    SetBatchLines, -1
    if (gym = "kure" or gym = "taek")
    {
        L = 0
        Loop,
        {
            Loop, ; buy
            {
                Click, 10
                ImageSearch, x, y, 60, 520, 790, 590, *10 %A_ScriptDir%\bin2\training.png
                if ErrorLevel = 0
                {
                    send 2{Click}
                    Sleep 100
                    Send 1r
                    Break
                }
            }

            Loop, ; ss 
            {
                ImageSearch, x, y, 10, 30, 800, 630, *2 %A_ScriptDir%\bin2\ss.png
                If ErrorLevel = 0
                {
                    Loop,
                    {
                        Loop, 4
                        {
                            ImageSearch, x, y, 60, 520, 790, 590, *10 %A_ScriptDir%\bin2\slotempty.png
                            if ErrorLevel = 0
                            {
                                Break
                            }
                            Click
                            Sleep 1080
                        }
                        ImageSearch, x, y, 60, 520, 790, 590, *10 %A_ScriptDir%\bin2\slotempty.png
                        if ErrorLevel = 0
                        {
                            Break
                        }
                        Click, Right
                        Sleep 1080
                    }
                    ImageSearch, x, y, 60, 520, 790, 590, *10 %A_ScriptDir%\bin2\slotempty.png
                    if ErrorLevel = 0
                    {
                        Break
                    }
                }
            }
            Sleep 100
            Send 1
            Sleep 100
            L++
            Tooltip, %L%
            SetTimer, removetooltip, -1000
            if L = %logs%
            {
                Send !{f4}
                ExitApp
            }
        }
    }
}
else
{
    ExitApp
}
Return
