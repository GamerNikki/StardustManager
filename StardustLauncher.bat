@echo off
title Stardust Client
cls
if NOT EXIST %appdata%\StardustUserData\%Username%.ini (
	md %appdata%\StardustUserData
	echo BGC 0 FGC F USERNAME %Username%>%appdata%\StardustUserData\%Username%.ini	
)else (
	echo file exsists>%appdata%\StardustUserData\Log.txt
)

goto LoginMenu 
:LoginMenu
cls
title Stardust Client [Login]
echo [1]. Login
echo [2]. Register
set /p "LChoice=>"
if %LChoice%==1 goto LoginUsername
if %LChoice%==2 goto Register
if %LChoice%gtr2 goto LoginMenu

:LoginUsername
setlocal enableDelayedExpansion
echo Enter USERNAME
set /p"USER=>"
FORFILES /p "H:\USERDATA" /m *.ini /c "cmd /c echo @fname>H:\USERDATA\USERS.txt"
goto LoginPassword

:Register
echo Enter a unique username
set /p "User=>"
FORFILES /p "H:\USERDATA" /m *.ini /c "cmd /c echo @fname>H:\USERDATA\USERS.txt"
if EXIST H:\USERDATA\%filen%.ini (
	echo Username Exists Already
)else (
	echo BGC 0 FGC F USERNAME %User% Password %Password%>H:\USERDATA\%User%.ini
)
goto Register2

:Register2
echo Enter a Password
set /p "Password=>"
echo BGC 0 FGC F USERNAME %User% Password %Password%>H:\USERDATA\%User%.ini
goto LoginMenu

:LoginPassword
echo enter Password
set /p"PASS=>"
goto startcheck

:startcheck
pause
for /f "tokens=6,8 delims= " %%a in (H:\USERDATA\%USER%.ini) do (
	echo %%a %%b
	set "userkey=%%a"
	set "passkey=%%b"
)
goto check

:check
pause
if %USER%==%userkey% goto check2
goto LoginMenu

:check2
pause
if %PASS%==%passkey% goto Menu
goto LoginMenu

:Menu
title Stardust Client [Menu]
echo Welcome %USER%
echo [1]. ChatSystem
echo [2]. GameLauncher
echo [3]. ModDownload
echo [4]. SetUp ImportantFolders
echo [5]. Logout
set /p"MChoice=>"