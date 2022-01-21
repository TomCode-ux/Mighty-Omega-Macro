InputBox, logs, how many weight you want to do?
if ErrorLevel = 1
{	ExitApp

}
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
removetooltip:
{	
	ToolTip
}
Return
MsgBox, 0,Tutorial, F1 for protein weight F2 for normal weight  
end::reload
#maxThreadsPerHotkey, 2
f1::
macro_on := !macro_on
if (macro_on)
{	
	protien = 0
	CoordMode , Pixel, Window
	PixelGetColor , color2, 250, 134,
	Loop,
	{		
		toolTip, %A_Index%
		SetTimer, removetooltip, -3000
		if protien = 0
		{			
			temp++
			Sleep 1000
			Click , 410, 455
			Sleep 100
			Send 0
			Sleep 50
			Send {Click 10}
			Sleep 8000
			Send 0
			StartTime7 := A_TickCount
			Loop ,
			{				
				Click, 400, 390
				Sleep 16
			} Until A_TickCount - StartTime7 > 2000
			if temp = 5
			{				
				protien = 1
				temp = 0
			}		
		}		
		loop, 3
		{			
			CoordMode, Pixel, Window
			CoordMode, Mouse, Window
			Click , 340, 400
			Sleep 220
			Click , 340, 370
			Sleep 220
			Click , 340, 340
			Sleep 220
			Click , 340, 310
			Sleep 220
			Click , 340, 280
			Sleep 220
			Click , 340, 250
			Sleep 220
			Click , 410, 355
			Sleep 220
			StartTime := A_TickCount
			Loop ,
			{				
				PixelSearch , x, y, 20, 130, 80, 133, 0x3A3A3A, 20, Fast
				If ErrorLevel = 0
				{				
					toolTip, stamina ranout
					SetTimer, removetooltip, -2000
					Sleep 8000
				}					
				ImageSearch, x , y , 250 , 220 , 560 , 440, *20 %A_ScriptDir%\bin\yellow.png
				if (errorlevel = 0)
				{					
					MouseClick, Left,  x+5, y+5
					Sleep 100
					Click, 400, 500
				}			
			} Until A_TickCount - StartTime > 62000
			StartTime2 := A_TickCount
			Loop ,
			{				
				Click, 400, 390
				Sleep 16
			} Until A_TickCount - StartTime2 > 5000
			if A_Index = %logs%
			{				
				Send !{f4}
				ExitApp
			} 
			StartTime4 := A_TickCount
			Loop,
			{				
				Sleep 100
				PixelSearch , x, y, 249, 133, 250, 135, color2, , Fast
				If ErrorLevel = 0
				{					
					Break
				}			
			} Until A_TickCount - StartTime4 > 7000
		}	
	}
}
else
{		
	exitapp
}
return
F2::
macro_on := !macro_on
if (macro_on)
{	
	CoordMode , Pixel, Window
	PixelGetColor , color2, 250, 134,
	loop,
	{		
		CoordMode, Pixel, Window
		CoordMode, Mouse, Window
		toolTip, %A_Index%
		SetTimer, removetooltip, -3000
		Click , 340, 400
		Sleep 220
		Click , 340, 370
		Sleep 220
		Click , 340, 340
		Sleep 220
		Click , 340, 310
		Sleep 220
		Click , 340, 280
		Sleep 220
		Click , 340, 250
		Sleep 220
		Click , 410, 355
		Sleep 220
		StartTime := A_TickCount
		Loop ,
		{			
			PixelSearch , x, y, 20, 130, 80, 133, 0x3A3A3A, 20, Fast
			If ErrorLevel = 0
			{				
				toolTip, stamina ranout
				SetTimer, removetooltip, -2000
				Sleep 8000
			}			
			ImageSearch, x , y , 250 , 220 , 560 , 440, *20 %A_ScriptDir%\bin\yellow.png
			if (errorlevel = 0)
			{				
				MouseClick, Left,  x+5, y+5
				Sleep 100
				Click, 400, 500
			}		
		} Until A_TickCount - StartTime > 62000
		StartTime2 := A_TickCount
		Loop ,
		{			
			Click, 400, 390
			Sleep 16
		} Until A_TickCount - StartTime2 > 5000
		if A_Index = %logs%
		{			
			Send !{f4}
			ExitApp
		}		
		StartTime4 := A_TickCount
		Loop,
		{			
			Sleep 100
			PixelSearch , x, y, 249, 133, 250, 135, color2, , Fast
			If ErrorLevel = 0
			{				
				Break
			}		
		} Until A_TickCount - StartTime4 > 7000
	}
}
else
{		
	exitapp
}
return
