#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop %A_ScriptDir%\*.ahk
{
	If (A_LoopFileName <> A_ScriptName && SubStr(A_LoopFileName, 1, 1) <> "_") {
		Run, %A_LoopFileName%
	}
}

ExitApp