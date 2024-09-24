ping -n 2 google.com > nul
if "%errorlevel%" == "0" goto connected
echo Not Connected
goto end

:connected
echo Connected

:end
pause
