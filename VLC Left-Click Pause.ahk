#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, Regex

IsMouseOver(title)
{
	MouseGetPos _, _, winId
	return (WinExist(title " ahk_id " winId))
}

#If IsMouseOver("- VLC media player")
~LButton::
	MouseGetPos _, _, _, ctrl
	if (SubStr(ctrl, 1, 16) == "VLC video output")
	{
		SendInput, {Space}
	}
	return
#If
