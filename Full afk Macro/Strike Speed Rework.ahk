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

If (gym = "kure" or gym = "taek" or gym = "box" or gym = "karate")
{

} else {
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
        111 = 0
        Send {Click 10}
        Sleep 100
        ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\training.png
        if ErrorLevel = 0
        {
            send 0{Click}
            Sleep 100
            Send 1r
        }
        Loop,
        {
            ImageSearch, x, y, 10, 30, 800, 630, *5 %A_ScriptDir%\bin2\ss.png ;
            If ErrorLevel = 0
            {
                Send {Click}
                ImageSearch, x, y, 10, 30, 800, 630, *5 %A_ScriptDir%\bin2\ss.png
                {
                    Send {Click, Right}
                }
                Sleep, 200
            }
            ImageSearch, x, y, 695, 530, 750, 580, *10 %A_ScriptDir%\bin2\aa.png
            if ErrorLevel = 0
            {
                Send 1
                Break
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