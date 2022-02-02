#maxThreadsPerHotkey, 2
end::reload
removetooltip(){
   ToolTip
}

f1::
   CoordMode, Pixel, Screen
   CoordMode, Mouse, Screen
   T := !T
   If T
   {
      MouseGetPos, x1, y1
      ToolTip, Saved First Position
      SetTimer, removetooltip, -500
   }else  {
      MouseGetPos, x2, y2
      ToolTip, Saved Seconds Position
      SetTimer, removetooltip, -500
   }
return

f2::
   heal = ok
   screen = one
   eats1 = 1
   temps1 = 0
   eats2 = 1
   temps2 = 0
   CoordMode, Pixel, Screen
   CoordMode, Mouse, Screen
   Loop,
   {
      ;start screen 1
      if screen = one
      {
         Click, %x1% %y1%
         Sleep 25
         Click, %x1% %y1%
         Sleep 400
         Send 2
         Sleep 150
         Send {Click}
         Sleep 300
         Click, %x2% %y2%
         Sleep 25
         Click, %x2% %y2%
         Sleep 100
         Send 1
         Sleep 100
         Send r
         loop,
         {
            ; amongus
            PixelSearch, x, y, 54, 114, 56, 116, 0x3D3DA2, 20, Fast 
            If ErrorLevel = 0
            {
               Send 1
               Sleep 100
               Click, %x1% %y1%
               Sleep 25
               Click, %x1% %y1%
               Send {Click}
               screen = two
               break
            }else  {
               Click, %x2%, %y2%
               Sleep 25
            }
            PixelSearch, x, y, 54, 114, 56, 116, 0x444444, 20, Fast 
            If ErrorLevel = 0
            {
               Send 1
               Sleep 100
               Click, %x1%, %y1%
               Sleep 25
               Click, %x1%, %y1%
               Send {Click}
               screen = two
               break
            }else  {
               Click, %x2%, %y2%
               Sleep 25
               PixelSearch, x, y, 1429, 244, 1431, 246, 0x212121, 3, Fast 
               If ErrorLevel = 0
               {
                  Sleep 100
                  Send e
                  Sleep 100
               }}}
         if screen = two
         {
            Click, %x2% %y2%
            Sleep 25
            Click, %x2% %y2%
            Sleep 400
            Send 2
            Sleep 150
            Send {Click}
            Sleep 300
            Click, %x1% %y1%
            Sleep 25
            Click, %x1% %y1%
            Sleep 100
            Send 1
            Sleep 100
            Send r
            loop,
            {
               ; amongus
               PixelSearch, x, y, 1020, 114, 1025, 116, 0x3D3DA2, 20, Fast 
               If ErrorLevel = 0
               {
                  Send 1
                  Sleep 100
                  Click, %x2% %y2%
                  Sleep 25
                  Click, %x2% %y2%
                  Send {Click}
                  screen = one
                  heal = now
                  break
               }else  {
                  Click, %x1%, %y1%
                  Sleep 25
               }
               PixelSearch, x, y, 1020, 114, 1025, 116, 0x444444, 20, Fast 
               If ErrorLevel = 0
               {
                  Send 1
                  Sleep 100
                  Click, %x2%, %y2%
                  Sleep 25
                  Click, %x2%, %y2%
                  Send {Click}
                  screen = one
                  heal = now
                  break
               }else  {
                  Click, %x1%, %y1%
                  Sleep 25
                  PixelSearch, x, y, 479, 259, 481, 261, 0x1E1E1E, 3, Fast 
                  If ErrorLevel = 0
                  {
                     Sleep 100
                     Send e
                     Sleep 100
                  }}}
            ; back to first screen to check auto eat
            Click, %x1% %y1%
            Sleep 25
            Click, %x1% %y1%
            Sleep 400
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
                    }}
         ;screen 2
         Click, %x2% %y2%
         Sleep 25
         Click, %x2% %y2%
         Sleep 400
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
                    }}
      
      if heal = now
      {
         Loop,
         {
            PixelSearch, x, y, 299, 114, 301, 116, 0x3CFA5F,, Fast 
            If ErrorLevel = 0
            {
               Sleep 6000
               break
            }
            Sleep 1000
         }
         heal = Ok
      }}
return              
