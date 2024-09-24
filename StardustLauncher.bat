::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdDaDJGqQ9VA0PQhAYAWXMmiyA6cg7unt5umIrAMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoBAlbMbAs=
::ZQ05rAF9IBncCkqN+0xwdVsFAlXXcjna
::ZQ05rAF9IAHYFVzEqQIDPBpGSBGRKCuZCrwZ5vyb
::eg0/rx1wNQPfEVWB+kM9LVsJDDeWPXm+E6YIqMT6+uSEqkgPNA==
::fBEirQZwNQPfEVWB+kM9LVsJDDeWPXm+FaEw5uvz6vjn
::cRolqwZ3JBvQF1fEqQIEIB4UYQWLMiuSE7dc3Oe73P6GsEkIR/Zf
::dhA7uBVwLU+EWGqQ9VATJBJRQhDi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdDaDJGqQ9VA0PQhAYAWXMmiyA6cg2/z6/e6SsVldeOMqdozT36bAJfgWig==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001
ping -n 2 10.96.54.187>nul
cd Y:\StardustLauncher
title Stardust Client
cls
if NOT EXIST %appdata%\StardustUserData\%Username%.ini (
	md %appdata%\StardustUserData
	set "FGC=F"
	echo BGC 0 FGC F USERNAME %Username%>%appdata%\StardustUserData\%Username%.ini
	set "BGC=0"
)else (
	echo file exsists>%appdata%\StardustUserData\Log.txt
)

echo starting main frame
echo █▓▒░
ping -n 2 10.96.54.187>nul
cls
echo setting up files
echo ███▓▒░
net use Y: \\bonham.csisd.org\students$\10006\100062393\MCJava password /user:CSISD\100062393 /persistent:yes
cd Y:\StardustLauncher
ping -n 8 10.96.54.187>nul
cls
echo performing a check
echo ██████▓▒░
ping -n 8 10.96.54.187>nul
cls
echo archiving old data
echo ████████▓▒░
ping -n 23 10.96.54.187>nul
cls
echo running bootstrap
echo █████████▓▒░
ping -n 10 10.96.54.187>nul
cls
echo syncing date and time
echo ██████████▓▒░
ping -n 2 10.96.54.187>nul
cls
echo downloading latest mod launchers
echo █████████████▓▒
ping -n 28 10.96.54.187>nul
cls
echo backing up files
echo ███████████████▓
ping -n 10 10.96.54.187>nul
cls
echo done! 
echo ████████████████
ping -n 2 10.96.54.187>nul
goto LoginMenu 
chcp %_codepage%
:LoginMenu
cls
title Stardust Client [Login]
echo [1]. Login
echo [2]. Register
echo [3]. Exit Launcher
set /p "LChoice=>"
if %LChoice%==1 goto LoginUsername
if %LChoice%==2 goto Register
if %LChoice%==3 goto EndSession
if %LChoice%gtr3 goto LoginMenu

:LoginUsername
cls
setlocal enableDelayedExpansion
echo Enter USERNAME
set /p"USER=>"
FORFILES /p "%cd%\USERDATA" /m *.ini /c "cmd /c echo @fname>%cd%\USERDATA\USERS.txt"
goto LoginPassword

:Register
cls
echo Enter a unique username
set /p "User=>"
FORFILES /p "%cd%\USERDATA" /m *.ini /c "cmd /c echo @fname>%cd%\USERDATA\USERS.txt"
if EXIST %cd%\USERDATA\%filen%.ini (
	echo Username Exists Already
    goto Regester
)else (
	echo BGC 0 FGC F USERNAME %User% Password %Password% isbanned 0>%cd%\USERDATA\%User%.ini
	echo BGC 0 FGC F USERNAME %User% Password %Password% isbanned 0>%appdata%\StardustUserData\%User%.ini
)
goto Register2

:Register2
echo Enter a Password
set /p "Password=>"
echo BGC 0 FGC F USERNAME %User% Password %Password%>%cd%\USERDATA\%User%.ini
goto LoginMenu

:LoginPassword
echo enter Password
set /p"PASS=>"
goto startcheck

:startcheck
for /f "tokens=6,8,10 delims= " %%a in (%cd%\USERDATA\%USER%.ini) do (
	set "userkey=%%a"
	set "passkey=%%b"
    set "isbanned=%%c"
)
goto check

:check
if %USER%==%userkey% goto check2
goto LoginMenu

:check2
if %PASS%==%passkey% goto check3
goto LoginMenu

:check3
if %isbanned%==false goto Menu
goto LoginMenubanned

:Menu
for /f "tokens=2,4 delims= " %%c in (%cd%\USERDATA\%USER%.ini) do (
	set "BGC=%%c"
	set "FGC=%%d"
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
if %MChoice%==1948-2383-0499 goto AdminCheck
goto Menu

:settings
echo BGC %BGC% FGC %FGC% USERNAME %User% Password %PASS%>%cd%\USERDATA\%User%.ini
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

:ChatSys





:LogoutMenu
echo logging out
color 0F
goto LoginMenu

:GameLaunch
goto Menu

:Profile
for /f "tokens=2,4,6,8 delims= " %%c in (%cd%\USERDATA\%USER%.ini) do (
	set "BGC=%%c"
	set "FGC=%%d"
	set "PUSERNAME=%%e"
	set "PPASSWORD=%%f"

)
echo Username:%PUSERNAME%
echo Password:%PPASSWORD%
echo Friends:WIP
echo 1.Look At Anothers Profile
echo 2.Back to main menu
set /p"PFC=>"
if %PFC%==1 goto OProfileC
if %PFC%==2 goto Menu

:OProfileC
echo enter the username of the person to show
set /p"PUC=>"
goto OProfile

:OProfile
for /f "tokens=2,4,6,10 delims= " %%c in (%cd%\USERDATA\%PUC%.ini) do (
	set "BGC=%%c"
	set "FGC=%%d"
	set "PUSERNAME=%%e"
	set "WasBanned=%%f"

)
echo Username:%PUSERNAME%
echo was banned?:%WasBanned%
echo Friends:WIP
echo 1.Look At Anothers Profile
echo 2.Back to main menu
set /p"PFC=>"
if %PFC%==1 goto OProfile
if %PFC%==2 goto Menu

:AdminCheck
if %User%==nikki goto AdminConsole
echo [NOT AN ADMIN] IF THIS IS AN ERROR PLEASE REPORT IT!
goto Menu

:AdminConsole
echo ADMIN CONSOLE ACTIVE
title Stardust Launcher[ADMIN CONSOLE ACTIVE] Current Admin USER=%User%
echo [1]. Launch Client Editor
echo [2]. Exit Admin Console
echo [3]. Ban a user
set /p"AdminChoice=>?"
if %AdminChoice%==1 "Y:\StardustLauncher\bat to exe\BatToExePortable\BatToExePortable.exe"
if %AdminChoice%==2 goto Menu
if %AdminChoice%==3 goto BanMenu
goto Admin Console

:BanMenu
title Stardust Launcher[BAN CONSOLE ACTIVE] Current Admin USER=%User%
echo enter the username of the user to ban
set /p"BanChoice=>"
echo enter their password
set /p"BanPass=>"
echo set the length of the ban
set /p"BanLength=>"
echo set the reason for the ban
set /p"BanReason=>"
echo BGC 0 FGC F USERNAME %BanChoice% Password %BanPass% isbanned true>"Y:\StardustLauncher\USERDATA\%BanChoice%.ini"
echo %BanChoice%>BannedUsers.lst
echo you have been banned from using stardust client>"Y:\StardustLauncher\USERDATA\ban reasons\%User%.bantxt"
echo Reason: %BanReason%>>"Y:\StardustLauncher\USERDATA\ban reasons\%User%.bantxt"
echo Length: %BanLength%>>"Y:\StardustLauncher\USERDATA\ban reasons\%User%.bantxt"
goto AdminConsole

:EndSession
cls
echo Closing Session
echo █▓▒░
ping -n 4 10.96.54.187>nul
cls
echo Closing Session
echo ██▓▒░
ping -n 4 10.96.54.187>nul
cls
echo Closing Session
echo ███▓▒░
ping -n 4 10.96.54.187>nul
cls
echo Closing Session
echo ███████▓▒░
ping -n 4 10.96.54.187>nul
cls
echo Closing Session
echo ██████████████▓▒░
ping -n 4 10.96.54.187>nul
cls
echo Closing Session
echo █████████████████
ping -n 4 10.96.54.187>nul
cls
exit

:LoginMenubanned
title Stardust Client
echo oh noes!
type "Y:\StardustLauncher\USERDATA\ban reasons\%User%.bantxt"
pause
goto LoginMenu
