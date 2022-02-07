#maxThreadsPerHotkey, 2
CoordMode, Pixel, Window
CoordMode, Mouse, Window
Loop, 3
{	
	CenterWindow("ahk_exe RobloxPlayerBeta.exe")
	Sleep 100
}
CenterWindow(WinTitle) {	
	WinGetPos,,, Width, Height, %WinTitle%
	WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2), 400, 400
}
removetooltip() {
    tooltip
}

end::reload

f1:: ; change keybind here!
PixelGetColor , color2, 250, 134,
toggle := !toggle
if (toggle)
{
    Loop, ; Start Loop
    {
        Tooltip, Start Running
        SetTimer, removetooltip, 1000
        task:
        {
            Sendinput, {w down}{w up}{w down}{s down}
            Rythm = False
            Loop,
            {
                PixelSearch, x, y, 170, 132, 171, 134, 0x3A3A3A, 40, Fast ;stamina 
                If ErrorLevel = 0
                {
                    Tooltip, Enough Stamina
                    SetTimer, removetooltip, 1000
                    Sleep 1000
                    Sendinput, {w up}{s up}
                    Sleep 100
                    Break
                }
                Sleep 1000
                PixelSearch, x, y, 249, 133, 250, 134, color2,, Fast ;If Still Full Stamina
                If ErrorLevel = 0
                {
                    Tooltip, Full Stamina
                    SetTimer, removetooltip, 1000
                    Sendinput, {w up}{s up}
                    Sleep 1000
                    Tooltip, Restart Run
                    SetTimer, removetooltip, -3000
                    Goto, task ; back to start
                }
            }
            Loop,
            {
                PixelSearch , x, y, 80, 144, 85, 146, 0x3A3A3A, 40, Fast ;Hungry
                If ErrorLevel = 0
                {
                    Tooltip, Start Eating 2 Time
                    SetTimer, removetooltip, 500
                    Sleep 500
                    Loop, 2
                    {
                        Rythm = False
                        tooltip, eat slot %slot% current %current%
                        settimer, removetooltip, -3000
                        if current <= 5
                        {
                            
                            Sleep 150
                            Send %slot%
                            Sleep 200
                            Send {Click 10}
                            Sleep 5500
                            Send %slot%
                            Sleep 100
                            Send 1
                            current++
                        }
                        if slot = 0
                        {
                            if current >= 5
                            {
                                PixelSearch , x, y, 25, 144, 30, 146, 0x3A3A3A, 40, Fast ; logs when hungry
                                If ErrorLevel = 0
                                {
                                    Send !{f4}
                                    Return
                                }
                            }
                        }
                        if current >= 5
                        {
                            slot++
                            current = 0
                            if slot >= 10
                            {
                                slot = 0
                            }
                        }
                    }
                }
                PixelSearch , x, y, 25, 144, 30, 146, 0x3A3A3A, 40, Fast ; losing muscle
                If ErrorLevel = 0
                {
                    Send !{f4}
                    Return
                }
                PixelSearch, x, y, 184, 132, 186, 134, 0x3A3A3A, 40, Fast ; Still Enough Stamina
                If ErrorLevel = 1 ; not enough
                {
                    Tooltip, Restart Run
                    SetTimer, removetooltip, -1000
                    ; too much stamina
                    Goto, task ; back to start
                }
                Else
                {
                    If Rythm = False
                    {
                        Rythm = True
                        Send r
                    }
                    else
                    {
                        Send {Click, 50}{Click, Right}
                    }
                }
                PixelSearch, x, y, 40, 132, 65, 134, 0x3A3A3A, 40, Fast  ; if too low stam
                if ErrorLevel = 0
                {
                    Tooltip, Too Low Stamina
                    SetTimer, removetooltip, -3000
                    Sleep 10000
                }
                
                PixelSearch, x, y, 409, 151, 411, 153, 0x242424,, Fast ;auto flow
                If ErrorLevel = 0
                {
                    Send e
                    Sleep 100
                }
                ; more here


            }
        }

    }

}
else
{
    Return
}
Return

