#SingleInstance, force
#NoEnv
#MaxThreadsPerHotkey, 2
SetCapsLockState, Off
SetBatchLines, -1
SetMouseDelay, -1
CoordMode, Pixel, Window
CoordMode, Mouse, Window

IfNotExist, %A_ScriptDir%\bin\Food
{
	msgbox,, file missing,Look like you didn't extract file,3
	ExitApp 
}

IfNotExist, %A_ScriptDir%\bin\Slot
{
	msgbox,, file missing,Look like you didn't extract file,3
	ExitApp 
}

IfNotExist, %A_ScriptDir%\bin
{
	msgbox,, file missing,Look like you didn't extract file,3
	ExitApp 
}

if !FileExist("webhook.txt")
{
    FileAppend, false, Webhook.txt
}

; New GUI
Gui, Add, Tab3 ,, Options | Autolog 


; Options tab
Gui, Tab, 1
Gui, Add, Text,, Discord webhook url *Optional
Gui, Add, Edit, w470 vWebhook r1,
Gui, Add, Text,, Discord User id 
Gui, Add, Edit, w200  vUserId r1,
Gui, Add, Text,, Stamina or RunningSpeed? *Required
Gui, Add, DropDownList, vTrainingChoice, Stamina|Running Speed
Gui, Add, CheckBox, vRecord, Auto clip?`nAutomatically Clip and check name if you are attacked
Gui, Add, Text,, How many times you want to do treadmill? *Only if you didn' t select autolog
Gui, Add, Edit ,Number w100 vReptimes r1, Required
; Auto log tab
Gui, Tab, 2
Gui, Add, CheckBox, vAutolog gALog, Do you want to auto log? *Optional


; Show GUI

Gui, Tab  ; i.e. subsequently-added controls will not belong to the tab control.
Gui, Add, Button, +default, Finished
Gui, Show, w550 h320, Vivace's Macro, Treadmill Macro
return


; Auto log lable:
ALog:
autolog = true
    MSGBox, 4, Vivace's Macro, Do you want to log at 65`%
    IfMsgBox, Yes
    {
        InputBox, fatiguebase , Vivace's Macro, How much fatigue do you have right now?,,300,125
        If ErrorLevel = 1
        {
            MsgBox,,Vivace's Macro,Do Not Cancel,3
            ExitApp
        }
        if fatiguebase is Not number
        {
            MsgBox,,Vivace's Macro,please enter only digits,3
            ExitApp
        }
        InputBox, fatigueplus , Vivace's Macro, What is your minimum fatigue gained per training?,,340,125
        If ErrorLevel = 1
        {
            
            MsgBox,,Vivace's Macro,Do Not Cancel,3
            ExitApp
        }
        if fatigueplus = 0
        {
            MsgBox,,Vivace's Macro,Don't use 0 in this,3
            ExitApp
        }
        if fatigueplus is Not number
        {
            MsgBox,,Vivace's Macro,please enter only digits,3
            ExitApp
        }
        Loop,
        {
            cal:=fatiguebase+fatigueplus
            fatiguebase:=cal
            Log++ 
            if cal > 65
            {
                Break
            }
        }
        MsgBox,,Vivace's Macro, Repeat: %log% times,4
    }
    IfMsgBox, No
    {
        InputBox, Log, Vivace's Macro, How many times you want to do treadmill?,,340,125
        If ErrorLevel = 1
        {
            MsgBox,,Vivace's Macro,Do Not Cancel,3
            ExitApp
        }
        if Log is Not number
        {
            MsgBox,,Vivace's Macro,please enter only digits,3
            ExitApp
        }
    }
 else {
    autolog = false
}
return

GuiClose:
GuiEscape:
ButtonFinished:
Gui, Submit, NoHide
; MsgBox, %Reptimes% %TrainingChoice% %Record%

if (TrainingChoice != "" )
{
    msgbox,,Vivace's Macro, Welcome to free vivace's macro`nPress Space Bar to Exit Macro,
    if Record = 1
            {
                autoclip = true
                MsgBox,4,,Please set your instant replay to F8`nIf not Macro will use f12 record
                IfMsgBox, Yes
                            {
                                instant = true
                            }
                            IfMsgBox, No
                            {
                                record = true
                            }
                record = true
                Gui, Destroy
            }
    else{
        Gui, Destroy
    }
    if TrainingChoice = "Running Speed"
    {
        tread = true
    }
    else
    {
        tread = false
    }
      
}
else{

     MsgBox, 4,, Are you sure you want to exit, you have uncompleted info.
    IfMsgBox, Yes
    {
        Gui, Destroy  

    }else{

        return

    }
}
if (Webhook != "" or FileExist("webhook.txt"))
{
    if (UserId != "" or FileExist("webhook.txt"))
{
    FileRead, lamo, webhook.txt
    xd:
    if lamo = false
    {   
    FileRead, lamo, webhook.txt 
        filedelete, webhook.txt
        FileAppend, %Webhook%, Webhook.txt
        FileAppend, `n<@%UserId%>, Webhook.txt
        goto, xd

        tooltip, Checked
        webhook = true
        FileReadLine, url, webhook.txt, 1
        FileReadLine, userid, webhook.txt, 2
        discord = %url%
        id = %userid%
        WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        WebRequest.Open("POST", discord, false)
        WebRequest.SetRequestHeader("Content-Type", "application/json")
        Food=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% You are out of food!",
                "embeds": null
            }
        )
        Fatigue=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% You have reach 65`% fatigue!",
                "embeds": null
            }
        )
        Combat=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% You are attacked!",
                "embeds": null
            }
        )
        Cash=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% You are out of cash!",
                "embeds": null
            }
        )
        Level=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% You are pushed away from treadmill!",
                "embeds": null
            }
        )
        Combatlog=
        (
            {
                "username": "i love vivace's macro",
                "content": "auto log when not in combat",
                "embeds": null
            }
        )
        Logged=
        (
            {
                "username": "i love vivace's macro",
                "content": "Logged successfully",
                "embeds": null
            }
        )
        Kicked=
        (
            {
                "username": "i love vivace's macro",
                "content": "%userid% you got kicked from the game 😨",
                "embeds": null
            }
        )
    }
} 
} 
else
{
    webhook = false
    filedelete, webhook.txt
    FileAppend, false, Webhook.txt
}

sleep 1000
ToolTip
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
    ;start the macro
Sleep 1000
ImageSearch,,, 65, 35, 100, 65, *10 %A_WorkingDir%/bin/chat.bmp
If ErrorLevel = 0
{
    Click, 80 50
}
Loop,
{
    ImageSearch,,, 330, 230, 485, 270, *10 %A_WorkingDir%/bin/Leave.bmp
    If ErrorLevel = 0
    {
        Send {PrintScreen}
        If Webhook = true
        {
            Broken = true
            akicked = true ;:fearful:
            if instant = true
            {
                Send {f8}
            }
            Break
        } else {
            Pause
        }
    }
    PixelSearch ,,, 249, 129, 250, 130, 0x3A3A3A, 40, Fast
    If ErrorLevel = 1
    {				
        back:
        if tread = true ; rs
        {
            Click , 520, 310
            Click , 520, 311
        }
        if tread = false ; stam
        {
            Click , 290, 310
            Click , 290, 311
        }
        wait := A_TickCount
        Loop,
        {
            ImageSearch,,, 380, 450, 430, 470, %A_WorkingDir%/bin/lea.bmp
            If ErrorLevel = 0
            {
                Sleep 10
                Break
            }
        } Until A_TickCount - wait > 3000
        levely = 370
        levell = 5
        error = 0
        Loop,
        {
            ImageSearch,,, 390, 240, 430, 390, %A_WorkingDir%/bin/level%levell%.bmp
            If ErrorLevel = 0
            {
                MouseMove, 470 , %levely%
                MouseMove, 471 , %levely%
                Click, 10
                Sleep 100
                Break
            } else {
                levell--
                levely:=levely-30
                if levely <= 220
                {
                    levely = 370
                    level = 5
                    error++
                    if error <= 50
                    {
                        If Webhook = true
                        {
                            Broken = true
                            alevel = true
                            Click, 410, 345
                            Sleep 500
                            Break
                        } else {
                            Loop,
                            {
                                Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                                if ErrorLevel = 1
                                {
                                    Sleep 100
                                    Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                                    if ErrorLevel = 1
                                    {
                                        Break
                                    }
                                }     
                            }
                            If autolog = true
                            {
                                Process, Close, RobloxPlayerBeta.exe
                            }
                            MsgBox, Level not found
                            ExitApp
                        }
                    }
                }
            }       
        }
        If Broken = true
        {
            Break
        }
        MouseMove, 405, 600
        hand := A_TickCount
        Loop,
        {
            hand2 := A_TickCount - hand
            Sleep 50
            ImageSearch,,, 390, 330, 430, 370, %A_WorkingDir%/bin/hand.bmp
            If ErrorLevel = 0
            {
                Break
            }
            if (hand2 > 5000)
            {
                If Webhook = true
                {
                    Broken = true
                    amoney = true
                    Click, 410, 345
                    Sleep 500
                    Break
                }
                else
                {
                    If autolog = true
                    {
                        Process, Close, RobloxPlayerBeta.exe
                    }
                    MsgBox, Money ranout
                    ExitApp
                }
            }
        }
        If Broken = true
        {
            Break
        }
        Loop, 20 ;Click hand
        {
            Click , 410, 355
            Click , 410, 351
        }
        Sleep 3000

        Treadrun := A_TickCount
        Loop,
        {
            run := A_TickCount - Treadrun
            ImageSearch,,, 200, 240, 600, 300, *50 %A_ScriptDir%\bin\w.bmp
            if Errorlevel = 0
            {				
                Send {vk57} ;w
            }			
            ImageSearch,,, 200, 240, 600, 300, *50 %A_ScriptDir%\bin\a.bmp
            if Errorlevel = 0
            {				
                Send {vk41} ;a
            }
            ImageSearch,,, 200, 240, 600, 300, *50 %A_ScriptDir%\bin\s.bmp
            if Errorlevel = 0
            {				
                Send {vk53} ;s
            }			
            ImageSearch,,, 200, 240, 600, 300, *50 %A_ScriptDir%\bin\d.bmp
            if Errorlevel = 0
            {				
                Send {vk44} ;d
            }
            if (run > 57000)
            {
                Click, 400, 290
                Click, 400, 291
            }
            PixelSearch ,,, 40, 130, 45, 133, 0x3A3A3A, 40, Fast
            If ErrorLevel = 0
            {				
                WaitforStamina := A_TickCount
                Loop,
                {
                    if (run > 57000)
                    {
                        Click, 400, 290
                        Click, 400, 291
                    }
                } Until A_TickCount - WaitforStamina > 9000			
            }
        } Until A_TickCount - Treadrun > 65000
        if autolog = true
        {
            Count++

            if Count = %Log%
            {
                If Webhook = true
                {
                    Broken = true
                    a65 = true
                    Break
                } else {
                    Loop,
                    {
                        Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                        if ErrorLevel = 1
                        {
                            Sleep 100
                            Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                            if ErrorLevel = 1
                            {
                                Break
                            }
                        }     
                    }
                    If autolog = true
                    {
                        Process, Close, RobloxPlayerBeta.exe
                    }
                    MsgBox, Fatigue Reached 65`%
                    ExitApp
                }
                
            }
        }
        ; check for food
        Pixelsearch,,, 80, 95, 81, 96, 0x37378A, 10, Fast ; Combat Tag 
		if ErrorLevel = 0
		{
            If Webhook = true
            {
                Broken = true
                aCombat = true
                Break
            }
            else
            {
                Loop,
                {
                    Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                    if ErrorLevel = 1
                    {
                        Sleep 100
                        Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                        if ErrorLevel = 1
                        {
                            Break
                        }
                    }     
                }
                If autolog = true
                {
                    Process, Close, RobloxPlayerBeta.exe
                }
                MsgBox, Combat tag 
                ExitApp
            }
		}
        PixelSearch ,,, 70, 144, 75, 146, 0x3A3A3A, 40, Fast ; Hungry
		If ErrorLevel = 0
		{
        
            ; Auto eat
            Click, 410, 345
            Sleep 500
            aw = 0
            slot = 0
            Loop, 11 ;slot
            {
                Send %slot%
                Sleep 10
                ImageSearch,,, 65, 525, 705, 545, *10 %A_WorkingDir%/bin/Slot/%slot%.bmp
                If ErrorLevel = 0
                {
                    Inventory = false
                    Break
                } else {
                    slot++
                    if slot = 11
                    {
                        Inventory = true
                    }
                }
            } 

            If Inventory = true
            {
                Slotbar = 0
                Send {VKC0}
                MouseMove, 80, 50
                Loop,
                {
                    Acc1 := A_TickCount - acc
                    ImageSearch,,, 90, 190, 100, 200, *10 %A_WorkingDir%/bin/Slot/corner.bmp
                    If ErrorLevel = 0
                    {
                        Break
                    }
                    If (Acc1 > 5000)
                    {
                        msgbox, timeout
                        Break
                    }
                }
                Loop,
                {
                    ImageSearch, xx, yy, 65, 530, 750, 585, %A_WorkingDir%/bin/Slot/bar%Slotbar%.bmp
                    If ErrorLevel = 0
                    {
                        food = 1
                        Loop,
                        {
                            ImageSearch, x, y, 90, 195, 675, 500, %A_WorkingDir%/bin/food/foodall%food%.bmp
                            If ErrorLevel = 0
                            {
                                calx:=x+20
                                caly:=y+5
                                calxx:=xx+20
                                calyy:=yy+20 ;; somehow i can make it to work
                                error = 0
                                Click %calx% %caly% Down
                                Sleep 30
                                Click %calxx% %calyy% Up
                                Sleep 10
                                
                                slotfound = true
                                slotbar++
                                Break
                            } else {
                                food++
                                if food >= 23
                                {
                                    food = 1
                                    error++
                                    if error >= 10
                                    {
                                        If Webhook = true
                                        {
                                            Broken = true
                                            anofood = true
                                            Break
                                        } else {
                                            Loop,
                                            {
                                                Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                                                if ErrorLevel = 1
                                                {
                                                    Sleep 100
                                                    Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
                                                    if ErrorLevel = 1
                                                    {
                                                        Break
                                                    }
                                                } 
                                            }
                                            If autolog = true
                                            {
                                                Process, Close, RobloxPlayerBeta.exe
                                            }
                                            MsgBox, No food Left
                                            ExitApp
                                        }
                                    }
                                }
                            }
                            if slotfound = true
                            {
                                slotfound = false
                                Break
                            }
                        }
                    } else {
                        Slotbat++ 
                        If Slotbar >= 10
                        {
                            Inventory = false
                        }
                    }
                    If Inventory = false
                    {
                        Break
                    }
                }

                Send {VKC0}
                slot = 0
                Loop, 11
                {
                    Send %slot%
                    Sleep 10
                    ImageSearch,,, 65, 525, 705, 545, *10 %A_WorkingDir%/bin/Slot/%slot%.bmp
                    If ErrorLevel = 0
                    {
                        Break
                    } else {
                        slot++
                        if slot = 11
                        {
                            Inventory = true
                        }
                    }
                } 
            }

            time := A_TickCount
            Loop, ; Eating part
            {
                Click, 405 320
                Sleep 100
                Pixelsearch, x, y, 80, 95, 81, 96, 0x37378A, 10, Fast
                if ErrorLevel = 0
                {
                    aCombat = true
                    Broken = true
                    Break
                }
                PixelSearch, x, y, 119, 144, 110, 146, 0x3A3A3A, 40, Fast ; full hunger
                If ErrorLevel = 1
                {
                    Break
                }
                ImageSearch,,, 65, 525, 705, 545, *10 %A_WorkingDir%/bin/Slot/%slot%.bmp
                If ErrorLevel = 1
                {
                    slot = 0
                    Loop, 11
                    {
                        Send %slot%
                        Sleep 10
                        ImageSearch,,, 65, 525, 705, 545, *10 %A_WorkingDir%/bin/Slot/%slot%.bmp
                        If ErrorLevel = 0
                        {
                            Break
                        } else {
                            slot++
                            if slot = 11
                            {
                                Inventory = true
                                Break
                            }
                        }
                    } 
                }
            } Until A_TickCount - time > 60000
            Send {BackSpace}
            StartTime2 := A_TickCount
            Loop,
            {			
                Click , 409, 296
                Click , 409, 295
            } Until A_TickCount - StartTime2 > 1500
        }
    }
}

ImageSearch,,, 330, 230, 485, 270, *10 %A_WorkingDir%/bin/Leave.bmp
If ErrorLevel = 0
{
    Send {PrintScreen}
    If Webhook = true
    {
        Broken = true
        akicked = true ;:fearful:
        if instant = true
        {
            Send {f8}
        }
    } else {
        Pause
    }
}
    
If aCombat  = true
{
    if webhook = true
    {
        WebRequest.Send(Combat)
        Pixelsearch,,, 80, 95, 81, 96, 0x37378A, 10, Fast ; Combat Tag 
        if ErrorLevel = 0
        {
            WebRequest.Send(Combatlog)
        }
    }
    Send {PrintScreen}
    if autoclip = true
    {
        If record = true
        {
            Send {f12}
        }
        PixelSearch,,, 565, 90, 566 , 91, 0xFFFFFF, 10
        IF ErrorLevel = 1
        {
            Send {Tab}
        }
        x = 30
        l = 125
        MouseMove, 765, %l%
        Loop, 10
        {
            Click, WheelUp
            Sleep 100
        }
            
        Sleep 350
        Loop, 36
        {
            MouseMove, 765, %l%
            l := (l + x)
            If A_Index = 14
            {
                MouseMove, 805, 140
                Click, Down
                MouseMove, 805, 250
                Click, Up
                Sleep 200
                l = 125
            }
            If A_Index = 28
            {
                MouseMove, 805, 250
                Click, Down
                MouseMove, 805, 350
                Click, Up
                Sleep 200
                l = 125
            }
            Sleep 70
        }
        Sleep 1000
        if instant = true
        {
            Send {f8}
        }
        if record = true
        {
            Send {f12}
        }
    } 
        
}
if webhook = true
{
    If anofood = true
    {
        WebRequest.Send(Food)
    }
    If amoney = true
    {
        WebRequest.Send(Cash)
    }
    If alevel = true
    {   
        WebRequest.Send(Level)
    }
    If akicked = true
    {
        WebRequest.Send(kicked)
    }
}
    
Sleep 10000
Loop,
{
    Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
    if ErrorLevel = 1
    {
        Sleep 100
        Pixelsearch,,, 79, 98, 80, 99, 0x38388E, 10, Fast ; Combat Tag 
        if ErrorLevel = 1
        {
            Break
        }
    }     
}

If autolog = true
{
    Process, Close, RobloxPlayerBeta.exe
    If webhook = true
    {
        WebRequest.Send(Logged)
    }
}

Sleep 100
ExitApp
Return
Space::ExitApp
