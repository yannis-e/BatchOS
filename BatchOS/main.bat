@echo off

title CMD Loading... 
color f
:Main
Title Login
cls
color f
echo.
echo Welcome to Login
echo.
echo [1] Create Account
echo [2] Login
echo.
set /p choice1=Please choose a number:
if %choice1% == 1 goto createacc
if %choice1% == 2 goto login
cls
echo.
color c
echo Invalid number
echo.
pause
goto Main

:createacc
color f
cls
echo.
echo Create your account!
echo.
set /p username=Enter your username:
if exist "%username%".bat goto createacc2
set /p password=Create your password:
set /p name=Create your display name:


echo.
echo Saving your informations...
echo.
timeout /t 1 >nul

echo set user=%username%>>"%username%".bat
echo set pass=%password%>>"%username%".bat
echo set name=%name%>>"%username%".bat
echo set/a colortext="7">>"%username%".bat

echo.
echo Account saved!
echo.
pause
goto Main

:createacc2
cls
color c
echo.
echo Account already exists!
echo.
pause
goto Main

:login
color f
cls
echo.
echo You are about to Login.
echo.
set /p loguser=Enter your username:
if exist "%loguser%".bat goto typepass
color c
cls
echo.
echo We having trouble finding your account. Try again ...
pause
goto Main

:typepass
color f
cls
echo.
echo You are about to Login.
echo.
set /p logpass=Enter your password:
call "%loguser%".bat
if "%pass%" == "%logpass%" goto success
color c
cls
echo.
echo Incorrect password. Try again...
echo.
pause
goto Main

:success
color f
cls
call "%loguser%".bat
if %colortext% == 1 set textcolor=c
if %colortext% == 2 set textcolor=a
if %colortext% == 3 set textcolor=9
if %colortext% == 4 set textcolor=e
if %colortext% == 5 set textcolor=d
if %colortext% == 6 set textcolor=f
goto Desktop


:Desktop
Title Desktop
cls
color %textcolor%
call "%loguser%".bat
echo You are logged in as %name% 
echo.
echo [1] Logout
echo [2] Apps
echo [3] Settings
echo [4] Info
echo [0] Exit
echo.
set /p choice2=Please choose a number:
if %choice2% == 1 goto Main
if %choice2% == 2 goto Apps
if %choice2% == 3 goto Settings
if %choice2% == 4 goto Information
if %choice2% == 0 exit
cls
echo.
color c
echo Invalid number
echo.
pause
goto Desktop

:Apps
Title Apps
color %textcolor%
cls
echo.
echo Choose your app
echo.
echo [1] Spotify
echo [2] Calculator	
echo [3] Notepad
echo [0] Go back to Desktop
echo.
set /p choice3=Please choose a number:
if %choice3% == 1 goto Spotify
if %choice3% == 0 goto Desktop
if %choice3% == 2 goto Calculator
if %choice3% == 3 goto Notepad
cls
echo.
color c
echo Invalid number
echo.
pause
goto Apps

:Spotify
cls 
color c
echo.
echo Error 404 
echo.
pause
goto Apps

:Calculator
cls
color %textcolor%
echo.
echo Calculator
echo.
echo [1] Add
echo [2] Subtract
echo [3] Multiply
echo [4] Divide
echo [0] Go back to Apps
set /p choice4=Please choose a number:
if %choice4% == 1 goto add
if %choice4% == 2 goto subtract
if %choice4% == 3 goto multiply
if %choice4% == 4 goto divide
if %choice4% == 0 goto Apps
cls
echo.
color c
echo Invalid number
echo.
pause
goto Calculator

:add
cls
color %textcolor%
echo.
echo Add
echo.
set /p num1=Enter the first number:
set /p num2=Enter the second number:
set /A result=%num1% + %num2%
echo %num1% + %num2% = %result%
echo.
pause
goto Calculator

:subtract
cls
color %textcolor%
echo.
echo Subtract
echo.
set /p num3=Enter the first number:
set /p num4=Enter the second number:
set /A result2=%num3% - %num4%
echo %num3% + %num4% = %result2%
echo.
pause
goto Calculator

:multiply
cls
color %textcolor%
echo.
echo Multiply
echo.
set /p num5=Enter the first number:
set /p num6=Enter the second number:
set /A result3=%num5% * %num6%
echo %num5% + %num6% = %result3%
echo.
pause
goto Calculator

:divide
cls
color %textcolor%
echo.
echo Divide
echo.
set /p num7=Enter the first number:
set /p num8=Enter the second number:
set /A result4=%num7% / %num8%
echo %num7% + %num8% = %result4%
echo.
pause
goto Calculator

:Notepad
cls 
color c
echo.
echo Error 404 
echo.
pause
goto Apps

:settings
call "%loguser%".bat
cls
color %textcolor%
echo.
echo Settings
echo.
echo For User: %username%
echo.
echo [1] Change color
echo [2] Change username
echo [3] Change password
echo [4] Change display name
echo [0] Go back to Desktop
echo.
set /p choice5=Please choose a number:
if %choice5% == 1 goto editcolor
if %choice5% == 2 goto editusername
if %choice5% == 3 goto editpw
if %choice5% == 4 goto editname
if %choice5% == 0 goto Desktop
cls
echo.
color c
echo Invalid number
echo.
pause
goto settings

:editcolor
call "%loguser%".bat
cls
color %textcolor%
echo.
echo [1] Red
echo [2] Green
echo [3] Blue
echo [4] Yellow
echo [6] Magenta
echo [7] White
echo [0] Go back to Settings
echo.
set /p choice6=Please choose a number:
if %choice6% == 1 echo set /a colortext="1">>"%loguser%".bat
if %choice6% == 2 echo set /a colortext="2">>"%loguser%".bat
if %choice6% == 3 echo set /a colortext="3">>"%loguser%".bat
if %choice6% == 4 echo set /a colortext="4">>"%loguser%".bat
if %choice6% == 6 echo set /a colortext="5">>"%loguser%".bat
if %choice6% == 7 echo set /a colortext="6">>"%loguser%".bat
if %choice6% == 0 goto settings
goto updatecolorsettings

:updatecolorsettings
call "%loguser%".bat
if %colortext% == 1 set textcolor=c
if %colortext% == 2 set textcolor=a
if %colortext% == 3 set textcolor=9
if %colortext% == 4 set textcolor=e
if %colortext% == 5 set textcolor=d
if %colortext% == 6 set textcolor=f
goto settings

:editpw
cls
color %textcolor%
echo.
echo Edit password
echo.
set /p currentpw=Enter current password:
call "%loguser%".bat
if "%pass%" == "%currentpw%" goto successeditpw
color c
cls
echo.
echo Incorrect password. Try again...
echo.
pause
goto Settings

:successeditpw
cls
color %textcolor%
echo.
echo Edit password
echo.
set /p passwordedit=Enter your new password:
echo set pass=%passwordedit%>>"%loguser%".bat
echo.
echo New password saved!
echo.
pause
goto Settings

:editusername
call "%loguser%".bat
cls
color %textcolor%
echo.
echo Edit username
echo.
set /p currentpw2=Enter current password:
call "%loguser%".bat
if "%pass%" == "%currentpw2%" goto successeditusername
color c
cls
echo.
echo Incorrect password. Try again...
echo.
pause
goto Settings

:successeditusername
cls
color %textcolor%
echo.
echo Edit username
echo.
set /p usernameedit=Enter your new username:
ren "%loguser%.bat" "%usernameedit%.bat"
echo set user=%usernameedit%>>"%usernameedit%".bat
set loguser="%usernameedit%"
call "%loguser%".bat
echo.
echo New username saved!
echo.
pause
goto Settings

:editname
cls
color %textcolor%
echo.
echo Edit display name
echo.
set /p currentpw3=Enter current password:
call "%loguser%".bat
if "%pass%" == "%currentpw3%" goto successeditname
call "%loguser%".bat
color c
cls
echo.
echo Incorrect password. Try again...
echo.
pause
goto Settings

:successeditname
cls
color %textcolor%
echo.
echo Edit display name
echo.
set /p nameedit=Enter your new display name:
echo set name=%nameedit%>>"%loguser%".bat
call "%loguser%".bat
echo.
echo New display name saved!
echo.
pause
goto Settings

:Information
cls
color %textcolor%
call info.bat
echo.
echo System Information
echo.
echo.
echo Username: %username%
echo.
echo Display name: %name%
echo.
echo version: %version%
echo.
echo OS: %os%
echo.
echo author: %author%
echo.
echo.
pause
goto Desktop










