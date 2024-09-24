ping -n 2 10.96.54.186
if "%errorlevel%" == "0" goto connected
echo Not Connected
goto end

:connected
echo Connected

:end
pause
