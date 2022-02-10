@echo off

cls
title SNIPPET INSTALL SCRIPT
color 04
echo ---- WARNING ----
echo.
echo This script will only work on windows machines.
echo Also it MUST be placed in the same drive as your AppData folder as this is where snippets are stored.
echo If prompted on install if location is file or directory specify directory.
echo USE AT OWN RISK.
echo.
echo -----------------
echo.
echo CURRENT DRIVE LOCATION: %CD:~0,3%
echo.
echo INSTALL OPTIONS
echo.
echo 1. Install frontend and backend
echo 2. Install only frontend
echo 3. Install only backend
echo 4. Exit install
echo.
set /p consent= "INPUT DECISION: "
if /i "%consent%"=="1" goto installboth
if /i "%consent%"=="2"  goto installfront
if /i "%consent%"=="3"  goto installback
if /i "%consent%"=="2"  goto exitcommand

cls
echo Input not recognised...
goto commonexit

:installboth
cls
color 2
echo Installing Both Frontend And Backend...
xcopy "%cd%\VSCSNIPPETS-FRONTEND-V1.code-snippets" "%UserProfile%\AppData\Roaming\Code\User\snippets"
xcopy "%cd%\VSCSNIPPETS-BACKEND-V1.code-snippets" "%UserProfile%\AppData\Roaming\Code\User\snippets"
goto commonexit

:installfront
cls
color 2
echo Installing Frontend Only...
xcopy "%cd%\VSCSNIPPETS-FRONTEND-V1.code-snippets" "%UserProfile%\AppData\Roaming\Code\User\snippets"
goto commonexit

:installback
cls
color 2
echo Installing Backend Only...
xcopy "%cd%\VSCSNIPPETS-BACKEND-V1.code-snippets" "%UserProfile%\AppData\Roaming\Code\User\snippets"
goto commonexit

:exitcommand
cls
echo Install cancelled...
goto commonexit

:commonexit
echo Console will now terminate...
timeout 6 > NUL