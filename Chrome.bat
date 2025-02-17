@echo off
REM==========================================
REM Install Google chrome web brouwser Windows 7
REM==========================================

Msiexec /q /I googlechromestandaloneenterprise64.msi


rem ----- remove and copy default chrome shortcut -------

xcopy "Google Chrome.LNK" "C:\ProgramData\Microsoft\Windows\Start Menu\Cygnific programs\" /q /y
xcopy "master_preferences" "C:\Program Files\Google\Chrome\Application\" /q /y

IF NOT EXIST "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome\" goto next1
	rd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome" /S /Q
:next1

IF NOT EXIST "C:\users\Public\Desktop\Google Chrome.lnk" goto next2
    DEL "C:\users\Public\Desktop\Google Chrome.lnk" /F /Q
:next2

IF NOT EXIST "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk" goto next3
    DEL "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk" /F /Q
:next3

rem c:\windows\sysnative\reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" 

rd "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome" /S /Q
del "C:\Users\Public\Desktop\Google Chrome.*" /f /q

REM Return exit code to KACE
exit /B %EXIT_CODE%


