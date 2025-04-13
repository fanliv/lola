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

    ;Toa do status
    x1 = 1135
    y1 = 51
    x2 = 1145
    y2 = 60

    CoordMode, Pixel, Screen
    CoordMode, Mouse, Client
    Loop {
        if(WinExist("League of Legends")) {
            WinGetPos, X, Y, W, H, League of Legends
            PixelSearch, , , % X+x1, % Y+y1, % X+x2, % Y+y2, %statusColor%, , Fast RGB
            if (ErrorLevel) {
                ;ToolTip, dang tim tran
            } else {
                ;ToolTip, da tim thay tran
                ControlClick, x636 y560, League of Legends
            }
        }
        Sleep, 1500
    }

}