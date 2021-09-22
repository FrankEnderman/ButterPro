 @echo off

color 0a
title Butter Trinity v4 SP4
goto boot
:boot
cls
echo welcome!
timeout /T 1 /NOBREAK >nul
echo finding kernel.......
timeout /T 1 /NOBREAK >nul
echo Booting Butter Trinity ... 
timeout /T 1 /NOBREAK >nul
echo Loading IBLSOS
timeout /T 1 /NOBREAK >nul
echo :-$ > BOOT.INF
goto login
:login
cls            
echo enter your username
cls 
set/p name= enter name:
if %name% == null set %name% == %username%
echo.
cls
echo Hello! %name% it is %time% now.
echo.
pause



:menu
cls


echo What Would You Like To Do? Type the number.
echo.
echo 1.System Info 2.useful tools menu 7.controls 


ECHO current time: %time% date: %date% name: %name% 


set /p input= choose:
if %input% == 1 goto info
if %input% == 2 goto menu2
if %input% == 4 goto randomColor
if %input% == 5 goto help
if %input% == 6 goto browserMenu
if %input% == 7 goto ctrlPanel

:randomColor
cls
color 0c
pause 
goto menu
:info

cls
echo.========================

echo     Butter Trinity OS

echo.========================

echo     DETAILS  
timeout /T 1 /NOBREAK >nul
echo.
timeout /T 1 /NOBREAK >nul
echo     VERSION = 4 SP4
timeout /T 1 /NOBREAK >nul
echo.     
timeout /T 1 /NOBREAK >nul
echo     RAM = 1GB
timeout /T 1 /NOBREAK >nul
echo.
echo     CORE = %random%
echo.
timeout /T 1 /NOBREAK >nul
echo     HARD_DRIVE = 250GB     
echo.   
timeout /T 1 /NOBREAK >nul
echo     Kernel ver = 5.8.4
timeout /T 1 /NOBREAK >nul
echo.  
echo    Build = 3
echo.
timeout /T 1 /NOBREAK >nul
echo.=========================
timeout /T 2 /NOBREAK >nul
echo  @Copyright Interstar.inc 
timeout /T 2 /NOBREAK >nul
echo.
echo  GPL Public Liscense 3.0
timeout /T 2 /NOBREAK >nul
echo.=========================
timeout /T 2 /NOBREAK >nul
echo     account
timeout /T 1 /NOBREAK >nul
echo.
echo  name: %name%
timeout /T 1 /NOBREAK >nul
echo.
timeout /T 1 /NOBREAK >nul
echo  time: %time%
timeout /T 1 /NOBREAK >nul
echo.
echo  date: %date%
echo.
timeout /T 1 /NOBREAK >nul
echo Wanna check for update?
timeout /T 1 /NOBREAK >nul

echo  1. to check for update 
timeout /T 1 /NOBREAK >nul
echo  2. Menu
timeout /T 1 /NOBREAK >nul

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls

echo Checking for new version /Update.............
timeout /T 5 /NOBREAK >nul
echo.
pause
cls

echo.
echo 1 update found! %random%%random%%random%%random%%random%%random%%random%.SFG pack available
echo.
pause
goto menu
:clock 
cls
ECHO %time%
pause 
goto menu
:cal
cls 
echo %date%
echo enter 1 to return to menu
set /p input=
if %input% == 1 goto menu

:calc
title Calculator- Butter Trinity OS
cls
color 0a
title CALCULATOR- Butter Trinity OS
ECHO * = MULTIPLY
timeout /T 1 /NOBREAK >nul
ECHO + = ADD
timeout /T 1 /NOBREAK >nul
ECHO _ = SUBTRACT
timeout /T 1 /NOBREAK >nul
ECHO / = DIVIDE
timeout /T 1 /NOBREAK >nul
ECHO % = Get Even or Odd
timeout /T 1 /NOBREAK >nul
SET /p UDefine= 
SET /a UDefine=%UDefine%
ECHO =
ECHO %UDefine%
ECHO.
pause
goto menu
:TEXT
cls
echo TEXT EDITOR 1.1
echo Enter name of the text file you want to make
echo. 
set /p N=Name 
cls
set /p WRITE=Write Your Document 
echo %WRITE% > %N%.txt
goto HOME
:Help
cls
echo Text editor is a programe made for creating text documents
echo Calculator lets you process math problems

pause
goto menu

var DVDList == wmic logicaldisk get caption,volumename
cls
echo drives: %DVDList% 
echo press 1 to return to menu
set /p input=
if %input% == 1 goto menu

:powerOptions
cls
echo 1.reboot 2.boot into windows 3.return to menu 
set /p input=
if %input% == 1 goto boot
if %input% == 2 exit
if %input% == 3 goto menu

:productivity

echo 1.notes 2.calculator 3.menu
set /p input= select:
if %input% == 1 goto TEXT
if %input% == 2 goto calc
if %input% == 3 goto menu


:menu2
echo 1.calc 2.text editor
set /p OPTI= select option:
if %OPTI% == 1 goto calc
if %OPTI% == 2 goto UAC
:UAC
cls
echo do you want to let this program to change your kernel?
set /p FD= Yes = 1 No = 2:
if %FD% == 1 goto TEXT
if %FD% == 2 goto menu
:songs
start iexplore "https://www.youtube.com/watch?v=-345VbbYTN8"
:ctrlPanel
cls
timeout /T 1 /NOBREAK >nul
echo 1.power options 2.productivity 3.menu 4.BROKEN MODE (DANGER)
set /p DFF= select:
if %DFF% == 1 goto powerOptions
if %DFF% == 2 goto menu2
if %DFF% == 3 goto menu
if %DFF% == 4 goto brokenMode
