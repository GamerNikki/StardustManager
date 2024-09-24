::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJF+F4kszJxUaRQeNXA==
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
::cxY6rQJ7JhzQF1fEqQJgZksaHErTXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIDPBpGSBGRKCuZDrQIqMv04eSCoVkYRoI=
::eg0/rx1wNQPfEVWB+kM9LVsJDDeWPXm+E6YIy+D6+4o=
::fBEirQZwNQPfEVWB+kM9LVsJDDeWPXm+FaE/4Pyb
::cRolqwZ3JBvQF1fEqQIEIB4UbwyDKCuJH6YI7eW7yeWV4n4JVfA7bZzPug==
::dhA7uBVwLU+EWGqQ9VATJBJRQhDi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEx1YxOjhYRQGMKAs=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%a
ping -n 2 %_IPaddr% >nul
if %errorlevel%==0 goto main
goto main2
:main
set /p"ChatSend=>"
echo {%DATE% %TIME%} [%User%]: %ChatSend%>>"H:\MCJAVA\Chat Logs\GlobalChat.CHT"
title Stardust Chat Client [Connected!] 
ping -n 2 %_IPaddr% >nul
if %errorlevel%==0 goto main
goto main2 

:main2
set /p"ChatSend=>"
echo {%DATE% %TIME%} [%User%]: %ChatSend%>>%Temp%\Temp.txt
title Stardust Chat Client [Disconnected...] 
ping -n 2 %_IPaddr% >nul
if %errorlevel%==0 goto main
goto main2