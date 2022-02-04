IfNotExist, %A_ScriptDir%\bin\yellow.png
{
    msgbox,, file missing,Look like you didn't extract file,3
    ExitApp 
}
InputBox, logs, how many weight you want to do?, use for auto leave if nonstop put text in it
if ErrorLevel = 1
{	
    ExitApp
}
MsgBox, 4, Auto Protein, Do you want to use protein? [Slot 0]
IfMsgBox Yes
{
	protein = true
}
Else
{
	protein = false
}
MsgBox, 4, Stamina Detection
IfMsgBox Yes
{
	stam = true
}
Else
{
	stam = false
}


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
removetooltip()
{
    Tooltip
}
end::reload
f1::
CoordMode, Pixel, Window
CoordMode, Mouse, Window
macro_on := !macro_on
if (macro_on)
{
	CoordMode , Pixel, Window
	PixelGetColor , color2, 250, 134,
    Loop,
    {

		if protein = true
		{			
			temp++
			Sleep 100
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
				protein = false
			}		
		}
		Loop, 3
		{
			toolTip, %A_Index%
			SetTimer, removetooltip, -3000
			Click , 340, 400 ; select level
			Send {Click 10}
			Sleep 400
			Click , 410, 355 ; hand
			Send {F6}
			StartTime := A_TickCount
			Loop,
			{
				SetBatchLines, -1
				StartTime22 := A_TickCount
				ImageSearch, x , y , 250 , 220 , 560 , 440, *25 %A_ScriptDir%\bin\yellow.png
				if (errorlevel = 0)
				{
					MouseClick, Left, x+5, y+5, 1
					MouseClick, Left, x+5, y+5, 1
					ElapsedTime := A_TickCount - StartTime22
					tooltip, %ElapsedTime% ms
					MouseMove, 400, 541, 1
					Sleep 20
					settimer, removetooltip, -200
				}
				If Stam = true
				{
					PixelSearch, x, y, 40, 132, 65, 134, 0x3A3A3A, 40, Fast
					if ErrorLevel = 0
					{
							Sleep 5000
					}
				}
					
			} Until A_TickCount - StartTime > 62000
			StartTime2 := A_TickCount
			Loop ,
			{				
				Click, 400, 390
				Click, 400, 391
			} Until A_TickCount - StartTime2 > 6000
			Send {f6}
			if A_Index = %logs%
			{				
				Send !{f4}
				ExitApp
			} 
			StartTime4 := A_TickCount
			Loop,
			{				
				Sleep 100
				PixelSearch , x, y, 249, 133, 250, 134, color2, , Fast
				If ErrorLevel = 0
				{					
					Break
				}			
			} Until A_TickCount - StartTime4 > 7000
		}
    }
}
Else
{
    ExitApp
}
Return
