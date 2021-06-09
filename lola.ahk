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
    
    rpColor = 0x594918
    normalColor = #E3BA3D
    statusColor = 0x001F2D
    
    ; Toa do nut RP
    
    
    ;Toa do status
    x1 = 1135
    y1 = 51
    x2 = 1145
    y2 = 60
    
    
    CoordMode, Pixel, Client
    Loop {
        if(WinActive("League of Legends")) {
            ; Tim nut rp
            PixelSearch, , , %x1%, %y1%, %x2%, %y2%, %statusColor%, , Fast RGB
            if (ErrorLevel) {
                ; ToolTip, Dang tim tran
                
            } else {
                ; ToolTip, da tim thay tran
                ControlClick, x636 y560, League of Legends
            }
        }
        Sleep, 1500
    }
    
}