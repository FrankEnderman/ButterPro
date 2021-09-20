 @echo off
 
color 0a
title Butter Trinity v0.9
goto boot
:boot
cls
echo welcome!
timeout /T 1 /NOBREAK >nul
cls
echo finding kernel.......
timeout /T 1 /NOBREAK >nul
echo Booting Butter Trinity ... 
timeout /T 1 /NOBREAK >nul
pause
cls
echo boot complete.... loading objects.....
timeout /T 1 /NOBREAK >nul
goto login
:login
cls            
echo what is your name?
cls 
set/p name= enter name:
echo.
cls
echo Hello! %name% it is %time% now.
echo.
pause



:menu
cls


echo What Would You Like To Do? Type the number.
echo.
echo 1.System Info 2.useful tools menu 3.dates menu 4.change the text color 7.controls 8.Songs 9.productivity
echo 6.browser menu 5.help 10.folder creator 11.list disks 12.email sender (under development) 14.Drive rec
echo 15.randomness
ECHO current time: %time% date: %date% name: %name% 


set /p input= choose:
if %input% == 1 goto info
if %input% == 2 goto menu2
if %input% == 3 goto datesMenu
if %input% == 4 goto randomColor
if %input% == 5 goto help
if %input% == 6 goto browserMenu
if %input% == 7 goto ctrlPanel
if %imput% == 8 goto songs
if %input% == 9 goto productivity
if %input% == "A" 
if %input% == 6 goto GMenu
if %input% == 10 goto FolderCreator
if %input% == 11 goto DriveDisplay
if %input% == 12 start "C:\Users\drraj\Notepad++\msgbox.vbs" "C:\users\%username%\desktop\warning.vbs"
if %input% == 14 goto DRVRecovery
if %input% == 15 goto random
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
echo.
echo     VERSION = 0.9
echo.     
echo     RAM = 1GB

echo.
echo     CORE = %random%
echo.
echo     HARD_DRIVE = 250GB     
echo.   
echo     Kernel ver = 5.8.1
echo.  
echo    Build = 3
echo.
echo.=========================
echo  @Copyright Interstar.inc 
echo.
echo  GPL Public Liscense 3.0
echo.=========================
echo     account
echo.
echo  name: %name%
echo.
echo  time: %time%
echo.
echo  date: %date%
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo 1 update found!
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
ECHO + = ADD
ECHO _ = SUBTRACT
ECHO / = DIVIDE
ECHO % = Get Even or Odd
SET /p UDefine= 
SET /a UDefine=%UDefine%
ECHO =
ECHO %UDefine%
ECHO.
pause
goto menu
:TEXT
cls
echo TEXT EDITOR 1.0
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
:FolderCreator
cls
echo Welcome to Project Folder Creator.
echo Will create the following folder:
echo %foldername%
echo If this is okay,
pause

cls

set foldername=Project

md %foldername%

cd %foldername%

md cache

cd cache

md proxies

cd md footage

cd footage

md img seq

cd..

md preview

md projectfiles

md references

md renders

cd renders

md passes

cd..

cls

cd..

start %foldername%

cd %foldername%

echo Batch Complete!

tree

pause

pause
goto menu
:DriveDisplay
var DVDList == wmic logicaldisk get caption,volumename
cls
echo drives: %DVDList% 
echo press 1 to return to menu
set /p input=
if %input% == 1 goto menu
:DRVRecovery
set /p input=
ECHO please enter the drive letter of the corrupt drive
dir %input%:\secrets
pause
start chkdsk %input%: /f
echo implement next fix
pause
ECHO THIS IS A CORRUPT DRIVE. NEVER STORE ANYTHING HERE > CRITICAL_WARNING.txt
:powerOptions
cls
echo 1.reboot 2.boot into windows 3.return to menu 
set /p input=
if %input% == 1 goto boot
if %input% == 2 exit
if %input% == 3 goto menu
:fileSystem
cls
dir X:\
echo 
echo 1.menu 
set /p input= options
if %input% == 1 goto menu
:productivity

echo 1.notes 2.calculator 3.menu
set /p input= select:
if %input% == 1 goto TEXT
if %input% == 2 goto calc
if %input% == 3 goto menu
:emailer
cls
set /p RECEIVER= type receiver name
if /I "%RECEIVER:@=%" neq "%rev%" (
echo 
) else (
echo please retype the email receipient
)
echo data in the line>>filepath
:settings
cls
echo 1.return to menu 
echo set the time:
set /p OPT= new time
set %time% == %OPT%
if %OPT% == 1 goto menu
:spinningRage
start "C:\Users\%username%\OneDrive\Desktop\Flipp Flapp v1.2.bat"
:random
cls 
echo %random%%random%%random%%random%%random%%random%%random%
pause
goto menu
:datesMenu
cls
echo 1.calendar 2.time 3.menu
set /p direct= select:
if %direct% == 1 goto cal
if %direct% == 2 goto clock
if %direct% == 3 goto menu
:browser
cls
start iexplore
pause
exit
:searchHistoryFinder
for /f "delims=: tokens=2" %%i in ('ipconfig /displaydns^|find "Record Name"') do (find "%%i" /i history.txt >nul 2>&1|| echo %%i >>history.txt echo %%i)
timeout /nobreak 5 >nul 2>&1
sort history.txt /o history.txt
goto searchHistoryFinder
pause
exit
:browserMenu
echo 1.start browser 2.view search history 3.menu
set /p SD= sel:
if %SD% == 1 goto browser
if %SD% == 2 goto searchHistoryFinder
if %SD% == 3 goto menu


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
echo 1.power options 2.productivity 3.menu
set /p DFF= select:
if %DFF% == 1 goto powerOptions
if %DFF% == 2 goto menu2
if %DFF% == 3 goto menu