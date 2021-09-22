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
echo boot complete.... loading objects.....
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
echo 1.System Info 2.useful tools menu 3.dates menu 4.change the text color 7.controls 8.songs 9.Spinning Rage
echo 6.browser menu 5.help 10.folder creator 11.list disks 12.songs and stuff 14.Drive rec
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
if %input% == 9 goto spinningRage
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
timeout /T 1 /NOBREAK >nul
echo     Butter Trinity OS
timeout /T 1 /NOBREAK >nul
echo.========================
timeout /T 1 /NOBREAK >nul
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
timeout /T 1 /NOBREAK >nul
echo 1.power options 2.productivity 3.menu 4.BROKEN MODE (DANGER)
set /p DFF= select:
if %DFF% == 1 goto powerOptions
if %DFF% == 2 goto menu2
if %DFF% == 3 goto menu
if %DFF% == 4 goto brokenMode
:brokenMode
set CrashReason == 1
cls
echo =(
timeout /T 2 /NOBREAK >nul
echo %random%
timeout /T 2 /NOBREAK >nul
echo %random%%random%%random%%random%%random%%random%%random%
timeout /T 4 /NOBREAK >nul
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
timeout /T 3 /NOBREAK >nul
echo DRIVE CORRUPT
timeout /T 1 /NOBREAK >nul
echo 0x010100000000 DOS error 
timeout /T 5 /NOBREAK >nul
echo please wait......
timeout /T 7 /NOBREAK >nul
echo repair cannot fix your device. Trying to reset system
timeout /T 3 /NOBREAK >nul
cls
timeout /T 3 /NOBREAK >nul
echo restarting....
timeout /T 2 /NOBREAK >nul
echo BOOTING INTO TRINITY RRBI
timeout /T 5 /NOBREAK >nul
pause

function CRASH_HANDLER (
	echo crash.0x01100100F001.%CrashReason%.INCL.%random% > crashHandles_%random%.CRS
)
set %CrashReason% == "ManuallyInitiatedCrash"
CRASH_HANDLER
echo Oh! we are taking you to the boot screen because you initiated a crash :) and we saved all your crash info to a file.
timeout /T 2 /NOBREAK >nul
goto boot

:spinningRage
cls
SETLOCAL ENABLEDELAYEDEXPANSION

IF "%1" == "" (
    >NUL REG ADD HKCU\Console\Flappy /V FaceName /T REG_SZ /D "Lucida Console" /F
    >NUL REG ADD HKCU\Console\Flappy /V FontSize /T REG_DWORD /D 0x00180008 /F
	
    START "Flappy" "%~0" Font
    EXIT
) else IF "%1" == "Font" (
    >NUL REG DELETE HKCU\Console\Flappy /f
) else (
    GOTO :%1
)


MODE 30, 25
(CHCP 65001)>NUL
FOR /F %%A in ('ECHO PROMPT $E^| CMD') DO SET "ESC=%%A"
SET "up=%ESC%[nA"
SET "dn=%ESC%[nB"
SET "bk=%ESC%[nD"
SET "nx=%ESC%[nC"
SET "exit=ECHO %dn:n=1%%ESC%[48;2;55;128;128m%ESC%[38;2;212;172;87m%nx:n=4%Press W to try. Good Luck Next time! :(^&(COPY NUL "%~dpn0.quit")^>NUL^&EXIT ^!HighScore^!"
SET "every=SET /A "d[num]=frame %% #"& IF ^!d[num]^! EQU 0"

SET col[full]="500;163;225" "203;204;124" "121;199;173"
SET bird[full]="\█" "─█" "/█"
SET "pipe[bdy]=║"
SET "pipe[top]=╥"
SET "pipe[btm]=╨"
SET "pipe[max]=%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%%pipe[bdy]%%bk:n=1%%dn:n=1%"
SET "cloud[1]=%dn:n=2%█"
SET "cloud[2]=%dn:n=1%█%dn:n=1%%bk:n=1%█"
SET "cloud[3]=█%dn:n=1%%bk:n=1%█%dn:n=1%%bk:n=1%█"
SET "cloud[4]=█%dn:n=1%%bk:n=1%█%dn:n=1%%bk:n=1%█"
SET "cloud[5]=█%dn:n=1%%bk:n=1%█%dn:n=1%%bk:n=1%█"
SET "cloud[6]=%dn:n=1%█%dn:n=1%%bk:n=1%█"
SET "cloud[7]=%dn:n=2%█"
SET "cloud[8]="█" "█" 


FOR %%G in (col bird) DO (
    FOR %%B in (!%%G[full]!) DO (
        SET /A "d[num]+=1"
        SET "%%G[!d[num]!]=%%~B"
    )
    SET "d[num]=0"
)
FOR /L %%G in (1, 1, 7) DO (
    FOR /L %%Q in (%%G, 1, 7) DO (
        SET "cld[end][%%G]=!cld[end][%%G]!!cloud[%%Q]!%up:n=2%"
    )
    FOR /L %%Q in (1, 1, %%G) DO (
        SET "cld[bgn][%%G]=!cld[bgn][%%G]!!cloud[%%Q]!%up:n=2%"
    )
)
function RAND (
	set /a num=%random% %%12 1
)
SET "bird[cur]=%bird[1]%"
SET /A "bird[frame]=0", "bird[y]=RAND", "frame=pipe[num]=0", "bird[rand]=(%RANDOM% %% 3) + 1", "score=0", "score[high]=0"
DEL "%~dpn0.quit" 2>NUL

:START
SETLOCAL
TITLE Spinning Rage 1.7 FE
ECHO %ESC%[?25l%ESC%[48;2;55;128;128m%ESC%[2J%ESC%[38;2;212;172;87m%ESC%[8;11HSpinning Rage 1.7 FE %ESC%[9;9HHigh Score : !score[high]!%ESC%[11;9H[Press W]%ESC%[%bird[y]%;10H%ESC%[38;2;!col[%bird[rand]%]!m%bird[cur]%%ESC%[23;1H%ESC%[48;2;50;168;82m%ESC%[38;2;133;110;48m▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_▲_%ESC%[0m
ECHO Press W to keep flying 
PAUSE>NUL
"%~F0" CONTROL W >"%temp%\%~n0_signal.txt" | "%~F0" GAME <"%temp%\%~n0_signal.txt"&SET "score=!ERRORLEVEL!"
IF %score% GTR %score[high]% (
    SET "score[high]=%score%"
)
ENDLOCAL&SET "score[high]=%score%"
GOTO :START

:GAME
TITLE Press W to Jump- Spinning Rage v1.7 FE
FOR /L %%# in () DO (
    SET /P "input="
    IF defined input (
        SET "bird[jmp]=4"
        SET "input="
    )
    %every:#=5% (
        IF !bird[frame]! EQU 3 (
            SET "bird[frame]=1"
			) else (
            SET /A "bird[frame]+=1"
        )
        FOR %%F in (!bird[frame]!) DO (
            SET "bird[cur]=!bird[%%F]!"
        )
    )
    %every:#=30% (
        SET "pipe[disp]="
        FOR %%P in (!pipe[list]!) DO (
            FOR /F "tokens=1-5 delims=;" %%A in ("!pipe%%P!") DO (
                IF %%C EQU 1 (
                    SET "pipe[list]=!pipe[list]:%%P=!"
                ) else (
                    IF %%C EQU 10 (
                        IF !bird[y]! LEQ %%D (
                            %exit%
                        ) else IF !bird[y]! GEQ %%E (
                            %exit%
                        )
                        SET /A "score+=1"
                        TITLE Score : !score! - Spinning Rage
                    )
                    SET "pipe[disp]=!pipe[disp]!%ESC%[1;%%CH!pipe[max]:~0,%%A!%dn:n=1%%pipe[btm]%%dn:n=5%%bk:n=1%%pipe[top]%%dn:n=1%%bk:n=1%!pipe[max]:~0,%%B!"
                    SET /A "d[num]=%%C - 1"
                    SET "pipe%%P=%%A;%%B;!d[num]!;%%D;%%E"
                )
            )
        )
    )
    %every:#=20% (
        SET "cld[disp]="
        FOR %%P in (!cld[list]!) DO (
            FOR /F "tokens=1-3 delims=;" %%A in ("!cld%%P!") DO (
                IF %%C EQU 1 (
                    SET "cld[disp]=!cld[disp]!%ESC%[%%A;%%CH"
                    SET "cld[disp]=!cld[disp]!!cld[end][%%B]!
                    SET /A "cld[adj]=%%B + 1"
                    IF !cld[adj]! EQU 8 (
                        SET "cld[list]=!cld[list]:%%P=!"
                    ) else (
                        SET "cld%%P=%%A;!cld[adj]!;%%C"
                    )
                ) else (
                    SET "cld[disp]=!cld[disp]!%ESC%[%%A;%%CH"
					                    SET "cld[disp]=!cld[disp]!!cld[bgn][%%B]!
                    SET /A "d[num]=%%C - 1", "cld[adj]=%%B"
                    IF %%C GTR 23 (
                        SET /A "cld[adj]+=1"
                    ) else IF !d[num]! EQU 1 (
                        SET "cld[adj]=1"
                    )
                    SET "cld%%P=%%A;!cld[adj]!;!d[num]!"

                )
            )
        )
        IF !bird[jmp]! NEQ 0 (
            IF !bird[y]! EQU 1 (
                SET "bird[jmp]=1"
            ) else (
                SET /A "bird[jmp]-=1", "bird[y]-=1"
            )
        ) else (
            %every:#=5% (
                IF !bird[y]! NEQ 22 (
                    SET /A "bird[y]+=1"
                ) else (
                    %exit%
                )
            )
        )
    )
    %every:#=250% (
        SET /A "pipe[rand]=!RANDOM! %% 5"
        IF !pipe[rand]! EQU 0 (
            SET /A "pipe[num]+=1", "pipe[rand]=(!RANDOM! %% 15) + 1", "d[num]=(9 * pipe[rand]) - 1", "d[adj]=((21 - (pipe[rand] + 5)) * 9) - 1", "d[max]=pipe[rand] + 5"
            SET "pipe[!pipe[num]!]=!d[num]!;!d[adj]!;29;!pipe[rand]!;!d[max]!"
            SET "pipe[list]=!pipe[list]! [!pipe[num]!]"
        )
    )
    %every:#=275% (
        SET /A "cld[rand]=!RANDOM! %% 1"
        IF !cld[rand]! EQU 0 (
            SET /A "cld[num]+=1", "cld[rand]=(!RANDOM! %% 17) + 2"
            SET "cld[!cld[num]!]=!cld[rand]!;1;29"
            SET "cld[list]=!cld[list]! [!cld[num]!]"
			
        )
    )
    ECHO %ESC%[48;2;55;128;128m%ESC%[22;30H%ESC%[1J%ESC%[38;2;255;255;255m!cld[disp]!%ESC%[!bird[y]!;10H%ESC%[38;2;!col[%bird[rand]%]!m!bird[cur]!%ESC%[48;2;113;191;46m%ESC%[38;2;212;172;87m!pipe[disp]!%ESC%[0m
    SET /A "frame+=1"
)

:CONTROL
FOR /L %%C in () do (
    FOR /F "tokens=*" %%A in ('CHOICE /C:W /N') DO (
        IF exist "%~dpn0.quit" (
            DEL "%~dpn0.quit"
			var INF == ver
			echo !score[high]! , %INF%> %~dpn0.FECS
            EXIT
        )
        <NUL SET /P ".=%%A"
    )
)

GOTO menu	
	
