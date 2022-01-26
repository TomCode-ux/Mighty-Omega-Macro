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

reload1() 
{
    reload
}


InputBox, gym, What Gym are you at?, Answer: kure/ taek / box / karate
if ErrorLevel = 1 
{
    ExitApp
}

If not (gym = "kure" or gym = "taek" or gym = "box" or gym = "karate")
{
    tooltip, Look like the %gym% not exist in this version of macro
    SetTimer, reload1, -3000
    return
}

InputBox, logs, how many ss you want to do?, recommended for 500 for 400+ ss
if ErrorLevel = 1
{
    ExitApp
}

end::reload

f1::
CoordMode, Mouse, Window
CoordMode, Pixel, Window
SetBatchLines, -1
if (gym = "kure" or gym = "taek")
{
    Loop,
    {
        Send {Click 10}
        Sleep 100
        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\training.png
        if ErrorLevel = 0
        {
            send 0{Click}
            Sleep 100
            Send 1r
            StartTime12 := A_TickCount
            Loop,
            {
                ImageSearch, x, y, 10, 30, 800, 630, *2 %A_ScriptDir%\bin2\ss.png ;
                If ErrorLevel = 0
                {
                    Loop, 4
                    {
                        Send {Click}
                        Sleep 1050
                        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                        if ErrorLevel = 0
                        {
                            Break
                        }
                    }
                    StartTime11 := A_TickCount
                    Loop,
                    {
                        ImageSearch, x, y, 10, 30, 800, 630, *2 %A_ScriptDir%\bin2\ss.png
                        {
                            Send {Click, Right}
                            Sleep 300
                            Break
                        }
                        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                        if ErrorLevel = 0
                        {
                            Break
                        }
                    } Until A_TickCount - StartTime11 > 10000
                }
		ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                if ErrorLevel = 0
                {
                    Send 1
                    Break
                }
            } Until A_TickCount - StartTime12 > 25000
        } 
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
if (gym = "karate" or gym = "box")
{
    MouseGetPos, x1, y1
    Loop,
    {
        Send {Click 10}
        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\training.png
        if ErrorLevel = 0
        {
            Sleep 100
            Send {Shift}
            Sleep 100
            Send {d Down}
            Sleep 850
            Send {d up}{w Down}
            Sleep 750
            Send {w up}
            sleep 300
            send 0{Click}
            Sleep 100
            Send 1r
            StartTime12 := A_TickCount
            Loop,
            {
                ImageSearch, x, y, 10, 30, 800, 630, *2 %A_ScriptDir%\bin2\ss.png ;
                If ErrorLevel = 0
                {
                    Loop, 4
                    {
                        Send {Click}
                        Sleep 1050
                        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                        if ErrorLevel = 0
                        {
                            Break
                        }
                    }
                    StartTime11 := A_TickCount
                    Loop,
                    {
                        ImageSearch, x, y, 10, 30, 800, 630, *2 %A_ScriptDir%\bin2\ss.png
                        {
                            Send {Click, Right}
                            Sleep 300
                            Break
                        }
                        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                        if ErrorLevel = 0
                        {
                            Break
                        }
                    } Until A_TickCount - StartTime11 > 10000
                }
		ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
                if ErrorLevel = 0
                {
                    Send 1
                    Break
                }
            } Until A_TickCount - StartTime12 > 25000
            ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
            if ErrorLevel = 0
            {
                Sleep 1300
                Send {s Down}
                Sleep 750
                Send {s up}{a Down}
                Sleep 850
                Send {a up}
                sleep 100
                Send {Shift}
            }
        }
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

Return
