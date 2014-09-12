@echo OFF
TITLE Huawei Honor 3C Custom Recovery by Tepira SWA 2014 www.tepira.com


:MENU
CLS
@echo. ================================================================
@echo   Welcome to Flash recovery by Tepira.
@echo   Choose what you want to do.
@echo. ================================================================
@echo.
@echo.   Options:
@echo.
@echo.       1.Flash CWM recovery image to phone
@echo.
@echo.       2.Reboot to recovery mode
@echo.
@echo.       3.Quit
@echo.
@echo.
@echo.                                    
@echo. ================================================================
@echo.
:CHO
set choice=
set /p choice= Your choise:
IF NOT "%Choice%"=="" SET Choice=%Choice:~0,1%
if /i "%choice%"=="1" goto FLASHRECOVERY
if /i "%choice%"=="2" goto RECOVERY
if /i "%choice%"=="3" goto FIX
@echo. Please choose some options (type 1,2 or 3)

goto MENU

:FLASHRECOVERY
CLS

@echo. ================================================================
@echo.
@echo   Now please connect your phone to PC: 
@echo.
@echo     --Choose type of connection 
@echo.
@echo     --Be sure that USB Debugging is turn on 
@echo		[Settings - Developer options - USB debugging]
@echo.
@echo. ================================================================
@Flash_Tool\adb kill-server
@Flash_Tool\adb start-server
@Flash_Tool\adb wait-for-device >NUL 2>NUL
CLS

@echo ***************************************************************************
@echo *                                                                         *
@echo *                           Flashing Recovery......                       *
@echo *                                                                         *
@echo ***************************************************************************
@Flash_Tool\adb push recovery.img /data/local/tmp/recovery.img
@Flash_Tool\adb shell su -c "dd if=/data/local/tmp/recovery.img of=/dev/recovery"
@Flash_Tool\adb shell su -c "rm -r /data/local/tmp/recovery.img"
@echo.
@echo.
@echo============================================================================

goto MENU

:RECOVERY
CLS

@echo. ================================================================
@echo.
@echo   Now please connect your phone to PC: 
@echo.
@echo     --Choose type of connection 
@echo.
@echo     --Be sure that USB Debugging is on [Settings - Developer options - USB debugging]
@echo.
@echo. ================================================================
@SP_Flash_Tool\adb wait-for-device >NUL 2>NUL
CLS

@echo ***************************************************************************
@echo *                                                                         *
@echo *                  Entering phone to recovery mode...    			        *
@echo *                                                                         *
@echo ***************************************************************************
@Flash_Tool\adb kill-server
@Flash_Tool\adb start-server
@Flash_Tool\adb wait-for-device >NUL 2>NUL
@Flash_Tool\adb reboot recovery
goto END

:END
@Flash_Tool\adb kill-server
EXIT