#maxThreadsPerHotkey, 2
Loop, 3
{	
	CenterWindow("ahk_exe RobloxPlayerBeta.exe")
	Sleep 100
}
CenterWindow(WinTitle)
{	
	WinGetPos,,, Width, Height, %WinTitle%
	WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2), 400, 400
}
IfNotExist, %A_ScriptDir%\bin2\Start.png
{
    msgbox,, file missing,Look like you didn't extract file,3
    ExitApp 
}
IfNotExist, %A_ScriptDir%\bin2\Stop.png
{
    msgbox,, file missing,Look like you didn't extract file,3
    ExitApp 
}

MsgBox, 0, put mouse on Buy Pad. to Start Dura Macro,  F1 [YOU] and Wait for Start `nMessage to show up Then Your friend press F1  


e()
{
    Send e
}

type()
{
    Clipboard = . ;copy clipboard text
    Loop, 3
    {
        Send / ;chat
        Sleep 100
        Send ^{v} ;paste
        Sleep 100
        Send {Enter} ;enter
        Sleep 100
    }
}

removetooltip(){
    Tooltip
}

end::reload

F1::
CoordMode, Pixel, Window
PixelGetColor, lol, 255, 120
macro_on := !macro_on
if (macro_on)
{
    CoordMode, Pixel, Window
    CoordMode, Mouse, Window
    current = 0
    slot = 3
    Send 1r ;charge rythm
    Loop, ; wait for full hp
    {
        ImageSearch, x, y, 10, 30, 800, 630, *20 %A_ScriptDir%\bin2\Start.png
        If ErrorLevel = 0
        {
            Loop,
            {
                PixelSearch, x, y, 409, 151, 411, 153, 0x242424,, Fast ;auto flow
                If ErrorLevel = 0
                {
                    Send e
                    Sleep 100
                }

                ImageSearch, x, y, 10, 30, 800, 630, *40 %A_ScriptDir%\bin2\Stop.png
                If ErrorLevel = 0
                {
                    Break
                } else {
                    Send {Click}
                }
            }
        }
        PixelSearch, OutputVarX, OutputVarY, 254, 119, 255, 120, %lol%,,Fast ; Full and pop Dura
        If ErrorLevel = 0
        {
            Sleep 1000
            Send 1
            Sleep 100
            tooltip, Start Buying Dura
            settimer, removetooltip, -1000
            Click ;buy dura
            Sleep 25
            Click ;for sure
            Sleep 1000
            Send 2{Click} ;pop dura
            Clipboard = Start ;copy clipboard text
            Sleep 100
            Send / ;chat
            Sleep 50
            Send ^{v} ;paste
            Sleep 50
            Send {Enter} ;enter
            Sleep 100
            ;Settimer, e, -8000 ;berserk
            Loop,
            {
                PixelSearch, OutputVarX, OutputVarY, 70, 117, 71, 118, 0x3D3DA2, 20, Fast 
                If ErrorLevel = 0
                {
                    Clipboard = Stop ;copy clipboard text
                    Send / ;chat
                    Sleep 80
                    Send ^{v} ;paste
                    Sleep 80
                    Send {Enter} ;enter
                    Sleep 2000
                    Send {Click} ; un pop dura
                    Sleep 100
                    tooltip, Start Buying Dura
                    settimer, removetooltip, -1000
                    Click ;buy dura
                    Sleep 25
                    Click ;for sure
                    Send 1r
                    Sleep 1000
                    type()
                    PixelSearch , x, y, 99, 144, 100, 146, 0x3A3A3A, 40, Fast ;auto eat
                    If ErrorLevel = 0
                    {
                        tooltip, eat
                        settimer, removetooltip, -3000
                        if current <= 5
                        {
                            
                            Sleep 100
                            Send %slot%
                            Sleep 200
                            Send {Click 10}
                            Sleep 5500
                            Send %slot%
                            Send 1r
                            current++
                        }
                        if slot = 0
                        {
                            if current >= 5
                            {
                                PixelSearch , x, y, 99, 144, 100, 146, 0x3A3A3A, 40, Fast ;auto eat
                                If ErrorLevel = 0
                                {
                                    ExitApp
                                }
                            }
                        }
                        if current >= 5
                        {
                            slot++
                            Send {VKC0}
                            Sleep 200
                            Send {VKC0}
                            current = 0
                            if slot >= 10
                            {
                                slot = 0
                            }
                        }
                    }
                    Break
                }
                PixelSearch, OutputVarX, OutputVarY, 70, 117, 71, 118, 0x444444, 20, Fast 
                If ErrorLevel = 0
                {
                    Clipboard = Stop ;copy clipboard text
                    Send / ;chat
                    Sleep 80
                    Send ^{v} ;paste
                    Sleep 80
                    Send {Enter} ;enter
                    Sleep 2000
                    Send {Click} ; un pop dura
                    Sleep 100
                    tooltip, Start Buying Dura
                    settimer, removetooltip, -1000
                    Click ;buy dura
                    Sleep 25
                    Click ;for sure
                    Send 1r
                    Sleep 1000
                    type()
                    PixelSearch , x, y, 99, 144, 100, 146, 0x3A3A3A, 40, Fast ;auto eat
                    If ErrorLevel = 0
                    {
                        tooltip, eat
                        settimer, removetooltip, -3000
                        if current <= 5
                        {
                            Sleep 100
                            Send %slot%
                            Sleep 200
                            Send {Click 10}
                            Sleep 5500
                            Send %slot%
                            Send 1r
                            current++
                        }
                        if slot = 0
                        {
                            if current >= 5
                            {
                                PixelSearch , x, y, 99, 144, 100, 146, 0x3A3A3A, 40, Fast ;auto eat
                                If ErrorLevel = 0
                                {
                                    ExitApp
                                }
                            }
                        }
                        if current >= 5
                        {
                            slot++
                            Send {VKC0}
                            Sleep 200
                            Send {VKC0}
                            current = 0
                            if slot >= 10
                            {
                                slot = 0
                            }
                        }
                    }
                    Break
                }
            }
        }

        
    }
}
else
{
    Return
}
Return
