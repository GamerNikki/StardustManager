@echo off
title Stardust Client
cls
if NOT EXIST %appdata%\StardustUserData\%Username%.ini (
	md %appdata%\StardustUserData
	echo BGC 0 FGC F USERNAME %Username%>%appdata%\StardustUserData\%Username%.ini
	set %FGC=F%
	set %BGC=0%
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
cls
setlocal enableDelayedExpansion
echo Enter USERNAME
set /p"USER=>"
FORFILES /p "H:\USERDATA" /m *.ini /c "cmd /c echo @fname>H:\USERDATA\USERS.txt"
goto LoginPassword

:Register
cls
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
for /f "tokens=6,8 delims= " %%a in (H:\USERDATA\%USER%.ini) do (
	set "userkey=%%a"
	set "passkey=%%b"
)
goto check

:check
if %USER%==%userkey% goto check2
goto LoginMenu

:check2
if %PASS%==%passkey% goto Menu
goto LoginMenu

:Menu
for /f "tokens=2,4 delims= " %%c in (H:\USERDATA\%USER%.ini) do (
	set "BGC=%%c"
	set "BGC=%%d"
)
color %BGC%%FGC%
cls
title Stardust Client [Menu]
echo Welcome %USER%
echo [1]. ChatSystem
echo [2]. GameLauncher
echo [3]. ModDownload
echo [4]. User Profile
echo [5]. Logout
echo [0]. settings
set /p"MChoice=>"
if %MChoice%==1 goto ChatSys
if %MChoice%==2 goto GameLaunch
if %MChoice%==3 goto ModDownload
if %MChoice%==4 goto Profile
if %MChoice%==5 goto LogoutMenu
if %MChoice%==0 goto settings
goto Menu

:settings
color %BGC%%FGC%
echo Text Color is [%FGC%] Background Color is [%BGC%]
echo [1]. Change BGC
echo [2]. Change TC
echo [3]. Exit back to Menu
set /p"SettChoice=>"
if %SettChoice%==1 goto BGC
if %SettChoice%==2 Goto TC
if %SettChoice%==3 goto Menu
goto settings

:BGC
echo available colors
echo 0 = Black  1 = Blue  2 = Green
echo 3 = Aqua   4 = Red   5 = Purple
echo 6 = Yellow 7 = White 8 = Gray
echo 9 = Light Blue	A = Light Green	 B = Light Aqua
echo C = Light Red  D = Light Purple E = Light Yellow
echo F = Bright White
set /p"BGC=>"
goto settings

:TC
echo available colors
echo 0 = Black  1 = Blue  2 = Green
echo 3 = Aqua   4 = Red   5 = Purple
echo 6 = Yellow 7 = White 8 = Gray
echo 9 = Light Blue	A = Light Green	 B = Light Aqua
echo C = Light Red  D = Light Purple E = Light Yellow
echo F = Bright White
set /p"FGC=>"
goto settings
