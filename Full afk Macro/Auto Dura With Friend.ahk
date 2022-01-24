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

MsgBox, 0, put mouse on Buy Pad. to Start Dura Macro,  F1 [First Pop Dura Side] F2 [Hitting Side]
Stop()
{
    Clipboard = Stop ;copy clipboard text
    Send / ;chat
    Sleep 30
    Send ^{v} ;paste
    Sleep 10
    Send {Enter} ;enter
}
Start()
{
    Clipboard = Start ;copy clipboard text
    Send / ;chat
    Sleep 30
    Send ^{v} ;paste
    Sleep 10
    Send {Enter} ;enter
}
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
        Sleep 30
        Send ^{v} ;paste
        Sleep 40
        Send {Enter} ;enter
        Sleep 50
    }
}
removetooltip(){
    Tooltip
}

end::reload

F1::
macro_on := !macro_on
if (macro_on)
{
    CoordMode, Pixel, Window
    CoordMode, Mouse, Window
    current = 0
    slot = 3
    Loop,
    {
        tooltip, Start Buying Dura
        settimer, removetooltip, -1000
        Click ;buy dura
        Sleep 25
        Click ;for sure
        Sleep 1000
        Send 2{Click} ;pop dura
        Clipboard = Start ;copy clipboard text
        Send / ;chat
        Sleep 40
        Send ^{v} ;paste
        Sleep 40
        Send {Enter} ;enter
        Sleep 100
        Settimer, e, -15000 ;berserk
        Loop,
        {
            PixelSearch, OutputVarX, OutputVarY, 60, 117, 61, 118, 0x3D3DA2, 20, Fast 
            If ErrorLevel = 0
            {
                Clipboard = Stop ;copy clipboard text
                Send / ;chat
                Sleep 40
                Send ^{v} ;paste
                Sleep 40
                Send {Enter} ;enter
                Sleep 3000
                Send e{Click} ; un pop dura
                Sleep 100
                type()
                Break
            }
            PixelSearch, OutputVarX, OutputVarY, 60, 117, 61, 118, 0x444444, 20, Fast 
            If ErrorLevel = 0
            {
                Clipboard = Stop ;copy clipboard text
                Send / ;chat
                Sleep 30
                Send ^{v} ;paste
                Sleep 10
                Send {Enter} ;enter
                Sleep 3000
                Send e{Click} ; un pop dura
                Sleep 100
                type()
                Break
            }
        }

        ; STOP


        Send 1r ;charge rythm
        Loop,
        {
            ImageSearch, x, y, 10, 30, 800, 630, *20 %A_ScriptDir%\bin2\Start.png
            If ErrorLevel = 0
            {
                Break
            }
        } 
        Sleep 100
        Loop,
        {
            ImageSearch, x, y, 10, 30, 800, 630, *40 %A_ScriptDir%\bin2\Stop.png
            If ErrorLevel = 0
            {
                Break
            } else {
                Send {Click}
            }
        }
        Send 1
        

        ; STOP

        PixelSearch , x, y, 80, 144, 85, 146, 0x3A3A3A, 40, Fast ;auto eat
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
                current++
            }
            if slot = 0
            {
                if current >= 5
                {
                    Exitapp
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

        Loop,
        {
            PixelSearch, OutputVarX, OutputVarY, 254, 119, 255, 120, %lol%,,Fast
            If ErrorLevel = 0
            {
                Break
            }
        }
        Tooltip, %A_Index%
        Settimer, removetooltip, -2000

    }
}
else
{
    ExitApp
}
Return

F2::
macro_on := !macro_on
CoordMode, Pixel, Window
PixelGetColor, Lol, 255, 120
if (macro_on)
{
    CoordMode, Pixel, Window
    CoordMode, Mouse, Window
    current = 0
    slot = 3
    Loop,
    {

        Send 1r ;charge rythm
        Loop,
        {
            ImageSearch, x, y, 10, 30, 800, 630, *20 %A_ScriptDir%\bin2\Start.png
            If ErrorLevel = 0
            {
                Break
            }
        } 
        Sleep 100
        Loop,
        {
            ImageSearch, x, y, 10, 30, 800, 630, *40 %A_ScriptDir%\bin2\Stop.png
            If ErrorLevel = 0
            {
                Break
            } 
            else 
            {
                Send {Click}
            }
        }
        Send 1
        
        ; STOP
        tooltip, Start Buying Dura
        settimer, removetooltip, -1000
        Click ;buy dura
        Sleep 25
        Click ;for sure
        Sleep 1000
        Send 2{Click} ;pop dura
        Clipboard = Start ;copy clipboard text
        Send / ;chat
        Sleep 40
        Send ^{v} ;paste
        Sleep 40
        Send {Enter} ;enter
        Sleep 100
        Settimer, e, -15000 ;berserk
        Loop,
        {
            PixelSearch, OutputVarX, OutputVarY, 60, 117, 61, 118, 0x3D3DA2, 20, Fast 
            If ErrorLevel = 0
            {
                Clipboard = Stop ;copy clipboard text
                Send / ;chat
                Sleep 40
                Send ^{v} ;paste
                Sleep 40
                Send {Enter} ;enter
                Sleep 3000
                Send {Click} ; un pop dura
                Sleep 1000
                type()
                Break
            }
            PixelSearch, OutputVarX, OutputVarY, 60, 117, 61, 118, 0x444444, 20, Fast 
            If ErrorLevel = 0
            {
                Clipboard = Stop ;copy clipboard text
                Send / ;chat
                Sleep 40
                Send ^{v} ;paste
                Sleep 40
                Send {Enter} ;enter
                Sleep 3000
                Send {Click} ; un pop dura
                Sleep 1000
                type()
                Break
            }
        }

        PixelSearch , x, y, 80, 144, 85, 146, 0x3A3A3A, 40, Fast ;auto eat
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
                current++
            }
            if slot = 0
            {
                if current >= 5
                {
                    Exitapp
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

        Loop,
        {
            PixelSearch, OutputVarX, OutputVarY, 254, 119, 255, 120, %lol%,,Fast
            If ErrorLevel = 0
            {
                Break
            }
        }
        Tooltip, %A_Index%
        Settimer, removetooltip, -2000
    }
}
else
{
    ExitApp
}
Return
