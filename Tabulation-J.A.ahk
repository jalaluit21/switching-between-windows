#NoEnv
#SingleInstance, Force

SetTitleMatchMode, 2

Loop
{
    ; Get a list of all open windows
    WinGet, winList, List

    ; Loop through the list of windows
    Loop, %winList%
    {
        ; Get the ID and title of the current window
        thisWin := winList%A_Index%
        WinGetTitle, currTab, % "ahk_id " thisWin

        ; If the current window is active, continue to the next iteration
        if (WinActive(thisWin))
            continue

        ; If the current window is not active, switch to it
        WinActivate, ahk_id %thisWin%
        Sleep, 5000 ; Wait for 5 seconds
    }
}