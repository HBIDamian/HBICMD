:home
@echo off
color 0f
@Title HBICMD - Home
::  mode con: cols=104 lines=50
mode 90,400
cls
::@color 0a
call :title
:start
@Title HBICMD - Home
if exist "%cd%/null" del null
set /p cmd="%cd%>"
if /i "%cmd%"=="cleanup" goto cleanup_menu
if /i "%cmd%"=="color" goto color
if /i "%cmd%"=="ddos" goto ddos
if /i "%cmd%"=="hibernate" goto hibernate
if /i "%cmd%"=="?" goto help
if /i "%cmd%"=="hint" goto help
if /i "%cmd%"=="matrix" goto matrix
if /i "%cmd%"=="math" goto math
if /i "%cmd%"=="dl" goto dl
if /i "%cmd%"=="cmd" goto :EOF
if /i "%cmd%"=="start" goto clear
if /i "%cmd%"=="home" goto clear
if /i "%cmd%"=="cls" goto clear
if /i "%cmd%"=="exit" goto exit
if /i "%cmd%"=="quit" goto exit
if /i "%cmd%"=="spoon" goto spoon
if /i "%cmd%"=="stop" goto exit
if /i "%cmd%"=="sysinfo" goto sysinfo
if /i "%cmd%"=="virus" goto virus
if /i "%cmd%"=="fakeerror" goto fakeerror
if /i "%cmd%"=="file" goto filecreate
if /i "%cmd%"=="cfile" goto filecreate
if /i "%cmd%"=="" echo. &echo.
if /i "%cmd%"=="help" goto help
if /i "%cmd%"=="port" goto startPortScript
if /i "%cmd%"=="powershell" goto powershell
if /i "%cmd%"=="ps" goto powershell
::EASTER EGGS!!!::
if /i "%cmd%"=="%username%" goto username
if /i "%cmd%"=="anonymous" goto anonymous
if /i "%cmd%"=="rainbow" goto rainbow
if /i "%cmd%"=="time" goto time
if /i "%cmd%"=="hypnotoad" goto hypnotoad
if /i "%cmd%"=="microsoft" cls &call :title &echo Microsoft Sucks! &echo Ever Since they have made Windows 10, they went down hill! &pause &goto clear
if /i "%cmd%"=="harambe" cls &call :title &title UtraCMD - Dicks Out for Harambe! &echo Dicks Out for Harambe! &pause &goto clear
if /i "%cmd%"==":)" cls &call :title &title HBICMD - Keep Happy! &echo Thats it, Keep Happy! We dont want to see you sad! &pause &goto clear
if /i "%cmd%"==":P" cls &call :title &title HBICMD - Keep Happy! &echo Thats it, Keep Happy! We dont want to see you sad! &pause &goto clear
if /i "%cmd%"==":D" cls &call :title &title HBICMD - Keep Happy! &echo Thats it, Keep Happy! We dont want to see you sad! &pause &goto clear
if /i "%cmd%"=="xD" cls &call :title &title HBICMD - Keep Happy! &echo Thats it, Keep Happy! We dont want to see you sad! &pause &goto clear
::END EASTER EGGS!!!::

::TROLL COMMANDS::
if /i "%cmd%"=="trollcrash" goto trollcrash
if /i "%cmd%"=="trollfolder" goto trollfolder
if /i "%cmd%"=="troll" goto troll
if /i "%cmd%"=="trollindex" goto trollindex
if /i "%cmd%"=="trollfile" goto trollfile
::END TROLL COMMANDS::

::CODE COMMANDS::
if /i "%cmd%"=="codeindex" goto codeindex
if /i "%cmd%"=="codebasic" goto codebasic
if /i "%cmd%"=="codehtml" goto codehtml
::END CODE COMMANDS::

::FIREWALL COMMANDS::
if /i "%cmd%"=="firewall" goto firewallindex
if /i "%cmd%"=="firewall on" goto firewall_on
if /i "%cmd%"=="firewall off" goto firewall_off
if /i "%cmd%"=="firewall status" goto firewall_status
::END FIREWALL COMMANDS::
set cmd = ""
%cmd%
echo.
@ECHO OFF
goto start


:cleanup_menu
cls
call :title
@title HBICMD - PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo PC Cleanup Utility
echo --------------------------------------------------------------------------------
echo.
echo Select a tool
echo =============
echo.
echo [1] Delete Internet Cookies
echo [2] Delete Temporary Internet Files
echo [3] Disk Cleanup
echo [4] Disk Defragment
echo [5] Exit
echo.
set /p op=Run:
if %op%==1 goto cleanup_1
if %op%==2 goto cleanup_2
if %op%==3 goto cleanup_3
if %op%==4 goto cleanup_4
if %op%==5 goto home
goto cleanup_error

:cleanup_1
cls
call :title
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Deleting Cookies...
ping localhost -n 3 >nul
del /f /q "%userprofile%\Cookies\*.*"
cls
call :title
echo --------------------------------------------------------------------------------
echo Delete Internet Cookies
echo --------------------------------------------------------------------------------
echo.
echo Cookies deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto cleanup_menu
:cleanup_2
cls
call :title
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Deleting Temporary Files...
ping localhost -n 3 >nul
del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
cls
call :title
echo --------------------------------------------------------------------------------
echo Delete Temporary Internet Files
echo --------------------------------------------------------------------------------
echo.
echo Temporary Internet Files deleted.
echo.
echo Press any key to return to the menu. . .
pause >nul
goto cleanup_menu
:cleanup_3
cls
call :title
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Running Disk Cleanup...
ping localhost -n 3 >nul
if exist "C:\WINDOWS\temp"del /f /q "C:WINDOWS\temp\*.*"
if exist "C:\WINDOWS\tmp" del /f /q "C:\WINDOWS\tmp\*.*"
if exist "C:\tmp" del /f /q "C:\tmp\*.*"
if exist "C:\temp" del /f /q "C:\temp\*.*"
if exist "%temp%" del /f /q "%temp%\*.*"
if exist "%tmp%" del /f /q "%tmp%\*.*"
::if not exist "C:\WINDOWS\Users\*.*" goto cleanup_skip
if exist "C:\WINDOWS\Users\*.zip" del "C:\WINDOWS\Users\*.zip" /f /q
if exist "C:\WINDOWS\Users\*.exe" del "C:\WINDOWS\Users\*.exe" /f /q
if exist "C:\WINDOWS\Users\*.gif" del "C:\WINDOWS\Users\*.gif" /f /q
if exist "C:\WINDOWS\Users\*.jpg" del "C:\WINDOWS\Users\*.jpg" /f /q
if exist "C:\WINDOWS\Users\*.png" del "C:\WINDOWS\Users\*.png" /f /q
if exist "C:\WINDOWS\Users\*.bmp" del "C:\WINDOWS\Users\*.bmp" /f /q
if exist "C:\WINDOWS\Users\*.avi" del "C:\WINDOWS\Users\*.avi" /f /q
if exist "C:\WINDOWS\Users\*.mpg" del "C:\WINDOWS\Users\*.mpg" /f /q
if exist "C:\WINDOWS\Users\*.mpeg" del "C:\WINDOWS\Users\*.mpeg" /f /q
if exist "C:\WINDOWS\Users\*.ra" del "C:\WINDOWS\Users\*.ra" /f /q
if exist "C:\WINDOWS\Users\*.ram" del "C:\WINDOWS\Users\*.ram"/f /q
if exist "C:\WINDOWS\Users\*.mp3" del "C:\WINDOWS\Users\*.mp3" /f /q
if exist "C:\WINDOWS\Users\*.mov" del "C:\WINDOWS\Users\*.mov" /f /q
if exist "C:\WINDOWS\Users\*.qt" del "C:\WINDOWS\Users\*.qt" /f /q
if exist "C:\WINDOWS\Users\*.asf" del "C:\WINDOWS\Users\*.asf" /f /q
if not exist "C:\WINDOWS\Users\*.*" goto cleanup_skip
:cleanup_skip
if not exist C:\WINDOWS\Users\Users\*.* goto cleanup_skippy /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.zip del C:\WINDOWS\Users\Users\*.zip /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.exe del C:\WINDOWS\Users\Users\*.exe /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.gif del C:\WINDOWS\Users\Users\*.gif /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.jpg del C:\WINDOWS\Users\Users\*.jpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.png del C:\WINDOWS\Users\Users\*.png /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.bmp del C:\WINDOWS\Users\Users\*.bmp /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.avi del C:\WINDOWS\Users\Users\*.avi /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpg del C:\WINDOWS\Users\Users\*.mpg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mpeg del C:\WINDOWS\Users\Users\*.mpeg /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ra del C:\WINDOWS\Users\Users\*.ra /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.ram del C:\WINDOWS\Users\Users\*.ram /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mp3 del C:\WINDOWS\Users\Users\*.mp3 /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.asf del C:\WINDOWS\Users\Users\*.asf /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.qt del C:\WINDOWS\Users\Users\*.qt /f /q
if exist C:\WINDOWS\Users\AppData\Temp\*.mov del C:\WINDOWS\Users\Users\*.mov /f /q
:cleanup_skippy
if exist "C:\WINDOWS\ff*.tmp" del C:\WINDOWS\ff*.tmp /f /q
if exist C:\WINDOWS\ShellIconCache del /f /q "C:\WINDOWS\ShellI~1\*.*"
cls
call :title
echo --------------------------------------------------------------------------------
echo Disk Cleanup
echo --------------------------------------------------------------------------------
echo.
echo Disk Cleanup successful!
echo.
pause
goto cleanup_menu
:cleanup_4
cls
call :title
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Defragmenting hard disks...
ping localhost -n 3 >nul
defrag -c -v -u
cls
call :title
echo --------------------------------------------------------------------------------
echo Disk Defragment
echo --------------------------------------------------------------------------------
echo.
echo Disk Defrag successful!
echo.
pause
goto cleanup_menu
:cleanup_error
echo.
echo You have entered the wrong data. Please try again!
pause
goto cleanup_menu




:clear
cls &call :title &call :start
goto :EOF




:color
cls
call :title
@title HBICMD - Color 
echo     This will create a custom sentence in a diferent color to the command line!
echo.
echo.
echo First, Select a colour. (avalible colours are shown below!)
echo Dont worry, its not caps sensitive!
echo. 
echo                  Black    DarkBlue    DarkGreen    DarkCyan    DarkRed
echo.
echo      Gray     DarkGray    Blue         Green       Cyan       Red    DarkMagenta
echo. 
echo                     Yellow   White       Magenta      DarkYellow
echo.
set /p colorcolor=">"
cls
call :title
@title HBICMD - Color 
echo     This will create a custom sentence in a diferent color to the command line!
echo.
echo.
echo Secondly, Please type what you wish to say in colour!
set /p colormessage=">"
cls
call :title
@title HBICMD - Color
echo.
echo.
powershell Write-Host %colormessage% -foregroundcolor %colorcolor% & powershell -command "$Host.UI.RawUI.WindowTitle = 'HBICMD - Color'"
echo.
echo.
pause
goto clear




:dl
cls
call :title
@title HBICMD - Download
echo Here, you can download stuff of your fancy,
echo and export it to a file type of your own choosing!
echo Upon download, your file should be in the same folder as the HBICMD.exe.
echo.
echo Firstly, Please paste the file URL you wish to download!
set /p file=">"
echo Secondly, Please enter the name and file type you wish to call it.
echo (example: code.php)
set /p file1=">"
bitsadmin /transfer %file1% /download /priority FOREGROUND "%file%" "%cd%/%file1%"
echo.
echo Do you wish to make another transaction?
echo.
set /p dlcontinue="y/n >"
if /i "%dlcontinue%"=="y" goto dl
if /i "%dlcontinue%"=="Y" goto dl
if /i "%dlcontinue%"=="YES" goto dl
if /i "%dlcontinue%"=="yes" goto dl
goto clear




:fakeerror
cls
call :title
@title HBICMD - Error
echo This is the place where you can create your own error! :)
echo.
echo Firstly, What do you want as the error Title?
set /p errortitle="> "
echo.
echo Secondly, what would you want as the error Message?
set /p errormessage="> " 
cls
start mshta.exe vbscript:Execute("msgbox ""%errormessage%"",0,""%errortitle%"":close")
cls
goto clear




:filecreate
cls
call :title
@title HBICMD - Create File
echo What is the file name and extension you wish to create?
set /p file="> "
copy NUL "%file%" >NUL
echo >> "%file%" '%file%' has been generated by HBICMD
echo. >> "%file%"
echo >> "%file%" Please visit .
echo >> "%file%" http://HBIUnknown.tk for more software, updates or information that may come your way!
echo. >> "%file%"
echo >> "%file%" Many thanks, 
echo >> "%file%" http://HBIUnknown.tk
echo >> "%file%" HBIUnknown.
cls
call :title
@title HBICMD - Created file: "%file%"
echo The file "%file%" has been created!
pause 
echo Would you like to create another file such as "%file%"?
set /p filecreatecontinue="y/n >"
if /i "%filecreatecontinue%"=="y" goto filecreate
if /i "%filecreatecontinue%"=="Y" goto filecreate
if /i "%filecreatecontinue%"=="YES" goto filecreate
if /i "%filecreatecontinue%"=="yes" goto filecreate
goto clear




:hibernate
ping localhost -n 2 >NUL
shutdown -h
exit
goto start


:spoon
git clone --recursive -j8 %1
pause
goto clear




:matrix
title HBICMD - Matrix
MODE CON: COLS=63 LINES=53
COLOR 0A
call :matrixwriteLine
goto :EOF

:matrixwriteLine
	SET "line="
	FOR /L %%c IN (1,1,31) DO (CALL :matrixprintChar %%c)
	ECHO %line%
	GOTO matrixwriteLine
GOTO :EOF

:matrixprintChar
	SET /A num=%RANDOM%
	SET /A mod=num %% 2
	SET /A cmod=%1 %% 3
	IF %cmod% EQU 0 (
		SET "line=%line%  "
	) ELSE (
		IF %mod% EQU 1 (
			SET "line=%line%  "
		) ELSE (
			SET "char="
			SET "s=’¥¨«¬³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÛÙáâãäåæçèéêëîïð÷û'
			SET /A pick=%RANDOM% %% 97
			CALL SET "char=%%s:~%pick%,1%%"
			SET "line=%line% %char%"
		)
	)
	EXIT /B
goto :EOF




:troll
cls
:troll1
pause
echo That is the wrong key. Please try another one!
echo.
goto troll1




:math
@Title HBICMD - Calculator
cls
call :title
echo Please enter a valid calculation.
set /p sum=
set /a ans=%sum%
echo.
echo = %ans%
pause
echo Would you like to preform another calculation?
set /p mathcontinue="y/n >"
if /i "%mathcontinue%"=="y" goto math
if /i "%mathcontinue%"=="Y" goto math
if /i "%mathcontinue%"=="YES" goto math
if /i "%mathcontinue%"=="yes" goto math
goto clear




:null
cls
call :title
title HBICMD - Null
echo One does not simply null out your command.
echo Here is some help for you.
echo.
echo Use the command "hint" or "?" to access the help page.
echo OR
echo Click any key to continue to the help funtion.
pause
goto hint
goto EOF




:startPortScript
cls
call :title
title HBICMD - Firewall Port Control
echo This is where you can access the port settings for your PC firewall. 
echo It does not allow the user to port forward through a router, that has to be done manually.
echo.
echo.
echo Enter "open" if you wish to open the port or "close" if you want to close it. 
echo Enter "status" to check the ports.
set/p "cho=>"
if "%cho%"=="open" goto openPort
if "%cho%"=="close" goto closePort
if "%cho%"=="status" goto statusPort
if "%cho%"=="exit" exit
call :printPortRequired

:closePort
call :callPort
netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if ERRORLEVEL 1 (
    rem Rule %RULE_NAME% doesnt exists.
    echo Hey, you can't remove something that's not there
) else (
    echo Rule %RULE_NAME% does exist... Deleting
    netsh advfirewall firewall delete rule name=%RULE_NAME% dir=in protocol=TCP localport=%PORT%
    netsh advfirewall firewall delete rule name=%RULE_NAME% dir=in protocol=UDP localport=%PORT%
    netsh advfirewall firewall delete rule name=%RULE_NAME% dir=out protocol=TCP localport=%PORT%
    netsh advfirewall firewall delete rule name=%RULE_NAME% dir=out protocol=UDP localport=%PORT%
)
pause
goto home

:openPort
call :callPort
netsh advfirewall firewall show rule name=%RULE_NAME% >nul
if not ERRORLEVEL 1 (
    rem Rule %RULE_NAME% already exists.
    echo Hey, you already got a out rule by that name, you cannot put another one in!
) else (
    echo Rule %RULE_NAME% does not exist. Creating...
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=TCP localport=%PORT%
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=UDP localport=%PORT%
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=out action=allow protocol=TCP localport=%PORT%
    netsh advfirewall firewall add rule name=%RULE_NAME% dir=out action=allow protocol=UDP localport=%PORT%
)
pause
goto home

:callPort
echo Please enter your chosen port:
set/p "PORT=>"
if "%port%"=="" call :printPortNoRequired
if "%port%"==" " call :printPortNoRequired
set RULE_NAME="Toggle Port %PORT%"
cls
call :title
goto :EOF

:statusPort
cls
call :title
netstat -na 
pause
goto home



:printPortRequired
cls
powershell -Command Write-Host "A answer is required! Please enter a valid choice, or say `'exit`' to exit." -foreground "Red"
call :startPortScript
goto :EOF

:printPortNoRequired
cls
powershell -Command Write-Host "A Port number is required!." -foreground "Red"
call :startPortScript
goto :EOF




:startHBIcmd
if exist HBICMD.exe start HBICMD.exe
if not exist HBICMD.exe start HBICMD.bat
goto :EOF




:sysinfo
cls
call :title
systeminfo
pause
goto clear




::START EASTEREGGS COMMANDS::
::START EASTEREGGS COMMANDS::
::START EASTEREGGS COMMANDS::
::START EASTEREGGS COMMANDS::

:anonymous
cls
call :title
echo.
echo "We are Anonymous. We are Legion. We do not forgive. We do not forget. Expect us"
pause
goto clear




:time
cls
call :title
title HBICMD - Time
echo Its time for you to get a watch!
pause
set hour=%time:~0,2%
set min=%time:~3,2%
cls
call :title
title HBICMD - Time
echo Okay that was a little harsh... 
echo.
echo The time is %hour%:%min% 
echo             ------
pause>NUL
goto clear



:rainbow
cls
call :title
echo Press 'CTRL' + 'C' to stop!
echo.
call :rainbowloop
echo.
echo Press 'CTRL' + 'C' to stop!
echo.
@title RAINBOW LOOP!
goto :EOF
:rainbowloop
Set /a num=(%Random% %%9)+1
Set /a num1=(%Random% %%9)+1
color %num%%num1%
call :rainbowtext
goto rainbow
:rainbowText
echo  ######     #    ### #     # ######  ####### #     # 
echo  #     #   # #    #  ##    # #     # #     # #  #  # 
echo  #     #  #   #   #  # #   # #     # #     # #  #  # 
echo  ######  #     #  #  #  #  # ######  #     # #  #  # 
echo  #   #   #######  #  #   # # #     # #     # #  #  # 
echo  #    #  #     #  #  #    ## #     # #     # #  #  # 
echo  #     # #     # ### #     # ######  #######  ## ##  
echo. 
call :rainbowloop
goto :EOF




:username
cls
call :title
title HBICMD - %username%
echo %username%!
echo %USERDOMAIN%
echo THIS FEATURE IS MAGICAL!
pause
goto clear



::END EASTEREGGS COMMANDS::
::END EASTEREGGS COMMANDS::
::END EASTEREGGS COMMANDS::
::END EASTEREGGS COMMANDS::


::START TROLL COMMANDS::
::START TROLL COMMANDS::
::START TROLL COMMANDS::
::START TROLL COMMANDS::
:virus
cls
@TITLE HBICMD - Virus
call :title
echo Get ready to put your victim on the PC.
echo. When you continue, this will turn into a message saying Update Failure!.
pause
cls
color 07
@title Command Prompt
echo Microsoft Windows [Version 10.4.19683]
echo (c) 2016 Microsoft Corporation. All rights reserved.
echo.
echo Command Prompt Update Failure!
echo Do you wish to try again?
set /p lolololol="y/n >"
echo 
cls
shutdown /p /t 1 /s /c "Virus successfully installed! Have a nice day!"
cls
:virusloop
:virusmatrix
@mode con: cols=104 lines=50
color 0c
:virusmatrixstart
set /a a=%random%
if %a% geq 16384 set /a aa=1
if %a% lss 16384 set /a aa=0
color 0c
set /a b=%random%
if %b% geq 16384 set /a bb=1
if %b% lss 16384 set /a bb=0
color 04
set /a c=%random%
if %c% geq 16384 set /a cc=1
if %c% lss 16384 set /a cc=0
set /a d=%random%
if %d% geq 16384 set /a dd=1
if %d% lss 16384 set /a dd=0
set /a e=%random%
if %e% geq 16384 set /a ee=1
if %e% lss 16384 set /a ee=0
set /a f=%random%
if %f% geq 16384 set /a ff=1
if %f% lss 16384 set /a ff=0
set /a g=%random%
if %g% geq 16384 set /a gg=1
if %g% lss 16384 set /a gg=0
set /a h=%random%
if %h% geq 16384 set /a hh=1
if %h% lss 16384 set /a hh=0
set /a i=%random%
if %i% geq 16384 set /a ii=1
if %i% lss 16384 set /a ii=0
set /a j=%random%
if %j% geq 16384 set /a jj=1
if %j% lss 16384 set /a jj=0
set /a k=%random%
if %k% geq 16384 set /a kk=1
if %k% lss 16384 set /a kk=0
set /a l=%random%
if %l% geq 16384 set /a ll=1
if %l% lss 16384 set /a ll=0
set /a m=%random%
if %m% geq 16384 set /a mm=1
if %m% lss 16384 set /a mm=0
set /a n=%random%
if %n% geq 16384 set /a nn=1
if %n% lss 16384 set /a nn=0
set /a o=%random%
if %o% geq 16384 set /a oo=1
if %o% lss 16384 set /a oo=0
set /a p=%random%
if %p% geq 16384 set /a pp=1
if %p% lss 16384 set /a pp=0
set /a q=%random%
if %q% geq 16384 set /a qq=1
if %q% lss 16384 set /a qq=0
set /a r=%random%
if %r% geq 16384 set /a rr=1
if %r% lss 16384 set /a rr=0
set /a s=%random%
if %s% geq 16384 set /a ss=1
if %s% lss 16384 set /a ss=0
set /a t=%random%
if %t% geq 16384 set /a tt=1
if %t% lss 16384 set /a tt=0
set /a u=%random%
if %u% geq 16384 set /a uu=1
if %u% lss 16384 set /a uu=0
set /a v=%random%
if %v% geq 16384 set /a vv=1
if %v% lss 16384 set /a vv=0
set /a w=%random%
if %w% geq 16384 set /a ww=1
if %w% lss 16384 set /a ww=0
set /a x=%random%
if %x% geq 16384 set /a xx=1
if %x% lss 16384 set /a xx=0
set /a y=%random%
if %y% geq 16384 set /a yy=1
if %y% lss 16384 set /a yy=0
set /a z=%random%
if %z% geq 16384 set /a zz=1
if %z% lss 16384 set /a zz=0
echo %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz% %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz%
echo %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz% %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz%
@title %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz% %aa% %bb% %cc% %dd% %ee% %ff% %gg% %hh% %ii% %jj% %kk% %ll% %mm% %nn% %oo% %pp% %qq% %rr% %ss% %tt% %uu% %vv% %ww% %xx% %yy% %zz%
call :virusmatrixstart
call :virusloop
goto clear



:hypnotoad
cls
call :title
title HBICMD - All Glory to the HYPNO TOAD!
:::
:::               ,'``.._   ,'``.    
:::              :,--._:)\,:,._,.:        All Glory to the
:::              :`--,''   :`...';\          HYPNO TOAD!
:::               `,'       `---'  .    
:::               /                 \
:::              /                   \
:::            ,'                     :\.___,-.
:::           `...,---'``````-..._    |:       \
:::             (                 )   ;:    )   \  _,-.
:::              `.              (   //          `'    \
:::               :               `.//  )      )     , ;
:::             ,-|`.            _,'/       )    ) ,' ,'
:::            (  :`.`-..____..=:.-':     .     _,' ,'
:::             `,'\ ``--....-)='    `._,  \  ,') _ '``._
:::          _.-/ _ `.       (_)      /     )' ; / \ \`-.'
:::         `--(   `-:`.     `' ___..'  _,-'   |/   `.)
:::             `-. `.`.``-----``--,  .'
:::               |/`.\`'        ,',');
:::                   `         (/  (/
:::
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do echo(%%A
)
call :hypnocolor
:goto EOF
:hypnocolor

Set /a num=(%Random% %%9)+1
Set /a num1=(%Random% %%9)+1
Set /a num2=(%Random% %%9)+1
Set /a num3=(%Random% %%9)+1
Set /a num4=(%Random% %%9)+1
title HBICMD -  %num4%%num3%%num2%%num1%%num% All Glory to the HYPNO TOAD! %num%%num1%%num2%%num3%%num4%
color %num%
goto hypnocolor




::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::


:trollcrash
cls
start notepad.exe
start explorer.exe
cls
goto trollcrash


::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::


:trollfolder
cls
    call :title
    echo GENERATING EMPTY FOLDERS!
    echo PRESS "x" at the top, or use "CTRL + C" TO STOP!
    echo On average, takes 2 seconds to generate 2000 folders!
goto tfmkdir
:tfmkdir
::3
mkdir %random%%random%%random%\%random%%random%%random%
mkdir %random%%random%%random%\%random%%random%
mkdir %random%%random%%random%\%random%
::2
mkdir %random%%random%\%random%%random%%random%
mkdir %random%%random%\%random%%random%
mkdir %random%%random%\%random%
::1
mkdir %random%\%random%%random%%random%
mkdir %random%\%random%%random%
mkdir %random%\%random%
goto tfmkdir


::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::
::TROLL COMMANDS::

:trollfile
cls
call :title
::set thisisrandom=%random%
copy NUL _.%random% >NUL
:trollfolderstart
echo >> "_.%random%" I do advise you NOT leaving your hard drive open. Error Number: %random%%random%%random%!
goto :trollfolderstart

::END TROLL COMMANDS::
::END TROLL COMMANDS::
::END TROLL COMMANDS::
::END TROLL COMMANDS::






::TROLL INDEX::
:trollindex
cls
call :title
@Title HBICMD - Troll Index
echo - HBICMD - Troll Index
echo    =================================================================================
echo    # COMMAND      :      Explination                                               #
echo    # -------------:-----------------------------------------------------------------
echo    # trollindex   :      Brings you to this Troll Index page!                      #
echo    # troll        :      Puts a user into a endless (and harmless) loop!           #
echo    # trollcrash   :      Troll by crashing their PC by looping opening programs!   #
echo    # trollfile    :      Troll by generating a file that will be flood with data!  #
echo    # trollfolder  :      Spam your computer with loads of folders! (Wastes memory) #
echo    # virus        :      Displays a few messages then forces PC to shutdown!       #
echo    =================================================================================
echo.
echo    For a strong troll, put TrollFolder and trollcrash on first, then put trollcrash!
echo                            -----------     ----------                    -----------
echo             This trick works if you open up HBICMD on 3 seperate windows!
echo                             (Open HBICMD.exe 3 times)
echo.
echo.
echo.
echo           Although these trolls are completly harmless, they will lag your PC.
echo  These trolls include, shutting down or lagging PC, spamming folders, and plain looping.
echo.
echo.
echo.
pause
cls
call :title
goto :start
::END TROLL INDEX::




::CODE INDEX::
:codeindex
cls
call :title
@Title HBICMD - Code Index
echo - HBICMD - Code Index
echo    =================================================================================
echo    # COMMAND      :      Explination                                               #
echo    # -------------:-----------------------------------------------------------------
echo    # codeindex    :      Brings you to this code Index page!                       #
echo    # codebasic    :      Shows you how exactly HBICMD began as!                  #
echo    # codehtml     :      A simple 'Hello World' Website to start you off!          #
echo    =================================================================================
echo.
echo.   Thats it at the moment. Poor 'codebasic'... it has to stand with 'code'. #Loner!
pause
cls
call :title
goto :start
::END CODE INDEX::




:codebasic
cls
call :title
title HBICMD - Code - codebasic
if exist Basic-HBICMD.cmd del Basic-HBICMD.cmd
echo @ECHO OFF >> Basic-HBICMD.cmd
echo TITLE Basic-HBICMD >> Basic-HBICMD.cmd
echo REM       This was the first steps of HBICMD. From a simple code such as this, you could bypass most blocks. >> Basic-HBICMD.cmd
echo REM       For this example, I shall call this file, Basic-HBICMD. Feel free to change it. You are hung by no license. >> Basic-HBICMD.cmd
echo REM       Some systems block Command prompt, but allow BATCH code. So, with this code, you can use command prompt, like on HBICMD >> Basic-HBICMD.cmd
echo ECHO Copyright (c) 2019 Microsoft Corporation. All rights reserved. >> Basic-HBICMD.cmd
echo ECHO. >> Basic-HBICMD.cmd
echo :START >> Basic-HBICMD.cmd
echo SET /P cmd="%%cd%%>" >> Basic-HBICMD.cmd
echo %%cmd%% >> Basic-HBICMD.cmd
echo ECHO. >> Basic-HBICMD.cmd
echo @ECHO OFF >> Basic-HBICMD.cmd
echo GOTO START >> Basic-HBICMD.cmd
::.::
echo Your basic version of HBICMD has been generated!
echo It can be located at %cd%\Basic-HBICMD.cmd 

pause
goto clear




:codehtml
cls
call :title
title HBICMD - Code - codehtml
set hour=%time:~0,2%
set min=%time:~3,2%
if exist BasicWebsite.html del BasicWebsite.html
echo ^<^!DOCTYPE html^> >> BasicWebsite.html
echo ^<html^> >> BasicWebsite.html
echo ^<head^> >> BasicWebsite.html
echo ^<title^>Welcome To %username%'s Website^!^</title^> >> BasicWebsite.html
echo ^</head^> >> BasicWebsite.html
echo ^<body^>  >> BasicWebsite.html
echo ^<h1^>Hello World^! Welcome to %username%'s Website^!^<^/h1^>  >> BasicWebsite.html
echo ^<p^>This is %username%'s basic website supplied by HBIDamian - Creator of HBICMD^!^<^/p^>  >> BasicWebsite.html
echo ^<p^>This has been generated at %hour%:%min% on %date%^!^<^/p^> >> BasicWebsite.html
echo ^<^/body^>  >> BasicWebsite.html
echo ^<^/html^>  >> BasicWebsite.html
echo Yoiur basic html website has beem generated!
echo It can be located at:
echo %cd%\BasicWebsite.html
pause
goto clear



::FIREWALL INDEX::
:firewallindex
cls
call :title
@Title HBICMD - Firewall Index
echo - HBICMD - Firewall Index
echo    ====================================================================================
echo    # COMMAND         :      Explination                                               #
echo    # ----------------:-----------------------------------------------------------------
echo    # firewall        :      Brings you to this firewall Index page!                   #
echo    # firewall on     :      Shows you how exactly HBICMD began as!                  #
echo    # firewall off    :      A simple 'Hello World' Website to start you off.          #
echo    # firewall status :      Check the status of your firewall.                        #
echo    ====================================================================================
echo.
echo This feature has been supplied by an external developer.
echo.
pause
cls
call :title
goto :start
::END FIREWALL INDEX::

:firewall_on
cls
call :title
@Title HBICMD - Firewall On
NetSh Advfirewall set allprofiles state on >NUL
ECHO Firewall Reinstated
ECHO.
ECHO Operation Complete, press any key to return.
pause
goto :start

:firewall_off
cls
call :title
@Title HBICMD - Firewall Off
NetSh Advfirewall set allprofiles state off >NUL
ECHO Firewall Disabled
ECHO.
ECHO Operation Complete, press any key to return.
pause
goto :start


:firewall_status
cls
call :title
@Title HBICMD - Firewall Status
Netsh Advfirewall show allprofiles
ECHO.
ECHO Operation Complete, press any key to return.
pause
goto :start




::START HELP::
:hint
@Title HBICMD - Help
echo.
echo.
powershell Write-Host HBICMD -Help -foregroundcolor "GREEN"
echo.
echo With addition to the commands that Microsoft supply,
echo we have supplied the user with more commands, or simpified Microsoft commands.
echo.
echo There are also loads of easter egg commands ready to be found too!
echo Have fun trying to find them!
echo.
echo   =======================================================================================
echo   # COMMAND            :      INFO                                                      #
echo   # -------------------:----------------------------------------------------------------#
echo   # cleanup            :      A handy cleanup utility to speed up your PC.              #
echo   # codeindex          :      Have a look into some useful code that suits your needs!  #
echo   # color              :      To make your own colorful sentence on CMD!                #
echo   # dl                 :      Handy Downloading tool!                                   #
echo   # fakeerror          :      Allows the user to make their own custom error!           #
echo   # file / cfile       :      Allows the user to create their own file and extension.   #
echo   # firewall           :      Turn Firewall On and Off, or see Status.                  #
echo   # hibernate          :      Puts your PC into hibernation.                            #
echo   # hint               :      To This handy help page.                                  #
echo   # matrix             :      See the Matrix!                                           #
echo   # port               :      Where the user can toggle a port through their firewall.  #
echo   # spoon ^<GITHUB_URL^> :      Download a GitHub Repository                              #
echo   # sysinfo            :      Shortcut to see your system information!                  #
echo   # trollindex         :      Brings you to a troll index page.                         #
echo   =======================================================================================
echo.
echo End of help.
echo.
echo For request a command, Tweet "#HBICMD (command) (description or how it works)"
echo We will read them all!
echo OR if you know the creators in reality, then request to them in person!
echo.
pause
cls
goto :clear


:help
help
echo.
call :hint
goto :EOF


:exit
cls
call :title
if /i "%cmd%"=="stop" echo %username%, You have stopped using HBICMD
if /i "%cmd%"=="quit" echo %username%, You have quitted using HBICMD
if /i "%cmd%"=="exit" echo %username%, You have exitted HBICMD
echo Thanks for using HBICMD
title Thanks for using HBICMD
ping localhost -n 2 > NUL
echo.
exit




:powershell
cls
call :title
powershell -NoExit -command "$Host.UI.RawUI.WindowTitle = 'HBICMD - PowerShell'"
goto clear

:title
@echo off
powershell Write-Host HBICMD [Version 1.0.1.0 - HBICMD] ~ Hello World! -foregroundcolor "GREEN"
::echo 
echo (C) 2019 Microsoft Corporation.&echo (C) 2019 HBIDamian&echo.
goto :EOF