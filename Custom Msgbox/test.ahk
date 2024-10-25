#requires AutoHotkey v2
#singleinstance Force
Persistent

; Arial|Calibri|Comic Sans MS|Courier New|Segoe Script|Segoe UI|Tahoma|Times New Roman|Verdana
; Bold italic strike underlin

#Include CustomMsgbox.ahk
#Include Lib\CursorHandler.ahk

/* Run(
    "C:\Users\User\Documents\GitHub\FF-Creation\FF-Creation.ahk"
) */

/* ; Example loop to show all color schemes
Loop 8 {
    msg := CustomMsgBox("Color Scheme " A_Index)
    msg.SetColorScheme(A_Index)
       .Show()
} */

/* ; Use a specific color scheme (1-8)
msg := CustomMsgBox("Hello with specific colors!")
msg.SetPosition(500, 500)
msg.SetColorScheme(3)  ; Uses the green theme
.Show() */


/* ; Set color by name
msg := CustomMsgBox("Hello!")
msg.SetPosition(500, 500)
msg.SetColorScheme("Deep Purple")
.Show() */
