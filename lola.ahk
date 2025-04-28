if (not A_IsAdmin) {
    try {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
} else {
    lola()
}

lola()

{
    title = League of Legends
    statusColor = 0x01212F
    xColor = 0xc8aa6e
    
    ;Toa do status
    x1 = 1135
    y1 = 51
    x2 = 1145
    y2 = 60

    ; Toa do nut X
    x3 = 1258
    y3 = 90
    x4 = 1268
    y4 = 98

    timer = 0
    
    CoordMode, Pixel, Screen
    CoordMode, Mouse, Client
    Loop {
        if(WinExist("League of Legends")) {
            WinGetPos, X, Y, W, H, League of Legends
            PixelSearch, , , % X+x1, % Y+y1, % X+x2, % Y+y2, %statusColor%, , Fast RGB
            if (ErrorLevel) {
            } else {
                ControlClick, x636 y560, League of Legends
            }
            PixelSearch, , , % X+x3, % Y+y3, % X+x4, % Y+y4, %xColor%, , Fast RGB
            if (ErrorLevel) {
                timer = 0
            } else {
                timer += 1.5
                if(timer > 180){
                    ControlClick, x1260 y94, League of Legends
                    Sleep 1000
                    timer = 0
                    ControlClick, x538 y676, League of Legends
                }
            }

        }
        Sleep, 1500
    }
    
}