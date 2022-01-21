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
rtooltip:
tooltip
return
end::reload

f1::
macro_on := !macro_on
if (macro_on)
{
    CoordMode Pixel, Window
    CoordMode Mouse, Window
    current = 0
    slot = 2
    Rythm = 0
    
    Loop,
    {
        ImageSearch, OutputVarX, OutputVarY, 390, 565, 430, 580, *10 %A_ScriptDir%\bin2\fr.png ;if empty slot
        If ErrorLevel = 0
        {
            Send 1
        }
        ImageSearch, OutputVarX, OutputVarY, 70, 565, 110, 580, *10 %A_ScriptDir%\bin2\fr.png ;if empty slot
        If ErrorLevel = 0
        {
            Send 1
        }
        ImageSearch, OutputVarX, OutputVarY, 375, 525, 400, 545, *10 %A_ScriptDir%\bin2\slot.png 
                If ErrorLevel = 0
                {
                    Sleep 50
                    SendInput, {VKC0}
                    Sleep 500
                    ImageSearch, Emptyx2, Emptyy2, 145, 530, 190, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 2
                    If errorlevel = 0 
                    {
                        Slot2 = True
                    }
                    ImageSearch, Emptyx3, Emptyy3, 210, 530, 260, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 3
                    If errorlevel = 0 
                    {
                        Slot3 = True
                    }
                    ImageSearch, Emptyx4, Emptyy4, 280, 530, 330, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 4
                    If errorlevel = 0 
                    {
                        Slot4 = True
                    }
                    ImageSearch, Emptyx5, Emptyy5, 350, 530, 400, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 5
                    If errorlevel = 0 
                    {
                        Slot5 = True
                    }
                    ImageSearch, Emptyx6, Emptyy6, 420, 530, 470, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 6
                    If errorlevel = 0 
                    {
                        Slot6 = True
                    }
                    ImageSearch, Emptyx7, Emptyy7, 490, 530, 540, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 7
                    If errorlevel = 0 
                    {
                        Slot7 = True
                    }
                    ImageSearch, Emptyx8, Emptyy8, 560, 530, 610, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 8
                    If errorlevel = 0 
                    {
                        Slot8 = True
                    }
                    ImageSearch, Emptyx9, Emptyy9, 630, 530, 680, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 9
                    If errorlevel = 0 
                    {
                        Slot9 = True
                    }
                    ImageSearch, Emptyx0, Emptyy0, 700, 530, 750, 580, *10 %A_ScriptDir%\bin2\empty.png ;slot 0
                    If errorlevel = 0 
                    {
                        Slot0 = True
                    }

                    ImageSearch, tacox, tacoy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\eztaco.png ;taco
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, tacox+10, tacoy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, tacox+10, tacoy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, tacox+10, tacoy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, tacox+10, tacoy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, tacox+10, tacoy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, tacox+10, tacoy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, tacox+10, tacoy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, tacox+10, tacoy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, tacox+10, tacoy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ImageSearch, donutx, donuty, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\donut.png ;donut
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, donutx+10, donuty+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, donutx+10, donuty+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, donutx+10, donuty+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, donutx+10, donuty+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, donutx+10, donuty+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, donutx+10, donuty+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, donutx+10, donuty+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, donutx+10, donuty+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, donutx+10, donuty+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ImageSearch, chickenx, chickeny, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\chicken.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, chickenx+10, chickeny+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, chickenx+10, chickeny+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, chickenx+10, chickeny+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, chickenx+10, chickeny+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, chickenx+10, chickeny+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, chickenx+10, chickeny+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, chickenx+10, chickeny+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, chickenx+10, chickeny+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, chickenx+10, chickeny+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    ImageSearch, hotdogx, hotdogy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\hotdog.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, hotdogx+10, hotdogy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, hotdogx+10, hotdogy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, hotdogx+10, hotdogy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, hotdogx+10, hotdogy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, hotdogx+10, hotdogy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, hotdogx+10, hotdogy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, hotdogx+10, hotdogy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, hotdogx+10, hotdogy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, hotdogx+10, hotdogy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, ramengx, rameny, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\ramen.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, ramengx+10, rameny+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, ramengx+10, rameny+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, ramengx+10, rameny+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, ramengx+10, rameny+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, ramengx+10, rameny+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, ramengx+10, rameny+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, ramengx+10, rameny+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, ramengx+10, rameny+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, ramengx+10, rameny+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, pancakesx, pancakesy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\pancakes.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, pancakesx+10, pancakesy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, pancakesx+10, pancakesy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, pancakesx+10, pancakesy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, pancakesx+10, pancakesy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, pancakesx+10, pancakesy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, pancakesx+10, pancakesy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, pancakesx+10, pancakesy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, pancakesx+10, pancakesy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, pancakesx+10, pancakesy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, piex, piey, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\pie.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, piex+10, piey+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, piex+10, piey+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, piex+10, piey+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, piex+10, piey+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, piex+10, piey+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, piex+10, piey+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, piex+10, piey+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, piex+10, piey+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, piex+10, piey+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, hamburgerx, hamburgery, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\hamburger.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, hamburgerx+10, hamburgery+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, hamburgerx+10, hamburgery+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, hamburgerx+10, hamburgery+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, hamburgerx+10, hamburgery+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, hamburgerx+10, hamburgery+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, hamburgerx+10, hamburgery+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, hamburgerx+10, hamburgery+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, hamburgerx+10, hamburgery+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, hamburgerx+10, hamburgery+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, omelettex, omelettey, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\Omelette.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, omelettex+10, omelettey+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, omelettex+10, omelettey+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, omelettex+10, omelettey+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, omelettex+10, omelettey+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, omelettex+10, omelettey+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, omelettex+10, omelettey+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, omelettex+10, omelettey+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, omelettex+10, omelettey+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, omelettex+10, omelettey+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, TofuBeefSoupx, TofuBeefSoupy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\TofuBeefSoup.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, TofuBeefSoupx+10, TofuBeefSoupy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, Chickenfriesx, Chickenfriesy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\Chickenfries.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, Chickenfriesx+10, Chickenfriesy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                        MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, Chickenfriesx+10, Chickenfriesy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, tokitosakex, tokitosakey, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\tokitosake.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, tokitosakex+10, tokitosakey+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, tokitosakex+10, tokitosakey+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, tokitosakex+10, tokitosakey+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, tokitosakex+10, tokitosakey+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, tokitosakex+10, tokitosakey+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, tokitosakex+10, tokitosakey+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, tokitosakex+10, tokitosakey+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, tokitosakex+10, tokitosakey+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, tokitosakex+10, tokitosakey+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, steakfriedricex, steakfriedricey, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\steakfriedrice.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, steakfriedricex+10, steakfriedricey+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, steakfriedricex+10, steakfriedricey+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, steakfriedricex+10, steakfriedricey+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, steakfriedricex+10, steakfriedricey+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, steakfriedricex+10, steakfriedricey+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, steakfriedricex+10, steakfriedricey+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, steakfriedricex+10, steakfriedricey+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, steakfriedricex+10, steakfriedricey+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, steakfriedricex+10, steakfriedricey+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, sunnysideupeggx, sunnysideupeggy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\sunnysideupegg.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, sunnysideupeggx+10, sunnysideupeggy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, onigirix, onigiriy, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\onigiri.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, onigirix+10, onigiriy+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, onigirix+10, onigiriy+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, onigirix+10, onigiriy+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, onigirix+10, onigiriy+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, onigirix+10, onigiriy+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, onigirix+10, onigiriy+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, onigirix+10, onigiriy+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, onigirix+10, onigiriy+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, onigirix+10, onigiriy+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, steakx, steaky, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\steak.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, steakx+10, steaky+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, steakx+10, steaky+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, steakx+10, steaky+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, steakx+10, steaky+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, steakx+10, steaky+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, steakx+10, steaky+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, steakx+10, steaky+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, steakx+10, steaky+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, steakx+10, steaky+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ImageSearch, GrotesqueFoodx, GrotesqueFoody, 80, 185, 680, 500, *40 %A_ScriptDir%\bin2\GrotesqueFood.png ;chicken
                    If errorLevel = 0 
                    {
                        if Slot2 = True
                        {
                            MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                            Send {Click, Down}
                            MouseMove, Emptyx2+20, Emptyy2+5
                            Send {Click, Up}
                            Slot2 = False
                        } else {
                            if Slot3 = True
                            {
                                MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                Send {Click, Down}
                                MouseMove, Emptyx3+20, Emptyy3+5
                                Send {Click, Up}
                                Slot3 = False
                            } else {
                                if Slot4 = True
                                {
                                    MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                    Send {Click, Down}
                                    MouseMove, Emptyx4+20, Emptyy4+5
                                    Send {Click, Up}
                                    Slot4 = False
                                } else {
                                    if Slot5 = True
                                    {
                                        MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                        Send {Click, Down}
                                        MouseMove, Emptyx5+20, Emptyy5+5
                                        Send {Click, Up}
                                        Slot5 = False
                                    } else {
                                        if Slot6 = True
                                        {
                                            MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                            Send {Click, Down}
                                            MouseMove, Emptyx6+20, Emptyy6+5
                                            Send {Click, Up}
                                            Slot6 = False
                                        } else {
                                            if Slot7 = True
                                            {
                                                MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                                Send {Click, Down}
                                                MouseMove, Emptyx7+20, Emptyy7+5
                                                Send {Click, Up}
                                                Slot7 = False
                                            }else {
                                                if Slot8 = True
                                                {
                                                    MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                                    Send {Click, Down}
                                                    MouseMove, Emptyx8+20, Emptyy8+5
                                                    Send {Click, Up}
                                                    Slot8 = False
                                                } else {
                                                    if Slot9 = True
                                                    {
                                                        MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                                        Send {Click, Down}
                                                        MouseMove, Emptyx9+20, Emptyy9+5
                                                        Send {Click, Up}
                                                        Slot9 = False
                                                    } else {
                                                        if Slot0 = True
                                                        {
                                                            MouseMove, GrotesqueFoodx+10, GrotesqueFoody+10
                                                            Send {Click, Down}
                                                            MouseMove, Emptyx0+20, Emptyy0+5
                                                            Send {Click, Up}
                                                            Slot0 = False
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                Sleep 50
                SendInput, {VKC0}
                Sleep 100
                MouseMove, 60, 330
                ImageSearch, OutputVarX, OutputVarY, 375, 525, 390, 545, *10 %A_ScriptDir%\bin2\slot.png 
                If ErrorLevel = 0
                {
                    Send !{f4}
                    MsgBox, Look like no food was found
                    Return
                }
            }
        PixelSearch, x, y, 184, 132, 186, 134, 0x3A3A3A, 40, Fast
        if ErrorLevel = 0
        {
            if Rythm = 0
            {
                Rythm++
                Sleep 100
                Send r ; for auto rythm you can add " ; " in the front of this line to close auto flow
            }
            Send {Click, 50}{Click, Right}
        } 
        Else
        {
            Rythm = 0
            Sendinput, {w up}{s up}
            Sleep 1000
            Sendinput, {w down}{w up}{w down}{s down}
            Sleep 100
            StartTime := A_TickCount
            Loop,
            {
                PixelSearch, x, y, 184, 132, 186, 134, 0x3A3A3A, 40, Fast 
                If ErrorLevel = 0
                {
                    Sleep 2000
                    Sendinput, {w up}{s up}
                    Sleep 100
                    Send {Click, 50}{Click, Right}
                    Break
                }
            } Until A_TickCount - StartTime > 17000
	    Sendinput, {w up}{s up}
        }
        PixelSearch, x, y, 40, 132, 65, 134, 0x3A3A3A, 40, Fast  ; if too low stam
        if ErrorLevel = 0
        {
            Sendinput, {w up}{s up}
            Sleep 10000
        }
        PixelSearch , x, y, 80, 144, 85, 146, 0x3A3A3A, 40, Fast
        If ErrorLevel = 0
        {
		tooltip, eat
		settimer, rtooltip, -3000
            if current <= 5
            {
                Sleep 100
                Send %slot%
                Sleep 200
                Send {Click 10}
                Sleep 5500
                Send %slot%
		Sleep 100
		Send 1
                Sleep 50
                SendInput, {VKC0}
                Sleep 300
                SendInput, {VKC0}
		Sleep 50
                current++
            }
            if slot = 0
            {
                if current >= 5
                {
                    Slot = 1
                }
            }
            if current >= 5
            {
                Sleep 50
                SendInput, {VKC0}
                Sleep 300
                SendInput, {VKC0}
		Sleep 50
                slot++
                current = 0
                if slot >= 10
                {
                    slot = 0
                }
            }
        }
        PixelSearch , x, y, 25, 144, 30, 146, 0x3A3A3A, 40, Fast ; logs when hungry
        If ErrorLevel = 0
        {
            Send !{f4}
            Reload
        }
        PixelSearch, x, y, 409, 151, 411, 153, 0x242424,, Fast ;auto flow
        If ErrorLevel = 0
        {
            Send e
            Sleep 100
        }
    }
}
else
{
    ExitApp
}
Return

