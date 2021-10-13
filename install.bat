@echo off

cls
title SNIPPET INSTALL SCRIPT
color 04
echo ---- WARNING ----
echo.
echo This script will only work on windows machines.
echo Also it MUST be placed in the same drive as your roaming folder as this is where snippets are stored.
echo If prompted on install if location is file or directory specify directory.
echo USE AT OWN RISK.
echo.
echo -----------------
echo.
echo CURRENT DRIVE LOCATION: %CD:~0,3%
echo.
set /p consent= "PROCEED (Y/N): "
if /i "%consent%"=="y" goto installcommand
if /i "%consent%"=="n"  goto exitcommand

cls
echo Input not recognised...
goto commonexit

:installcommand
cls
color 2
echo Installing...
xcopy %cd%\VSCSNIPPETS-V1.code-snippets %UserProfile%\AppData\Roaming\Code\User\snippets
goto commonexit

:exitcommand
cls
echo Install cancelled...
goto commonexit

:commonexit
echo Console will now terminate...
timeout 6 > NUL