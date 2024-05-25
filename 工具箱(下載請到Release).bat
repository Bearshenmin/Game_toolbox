@ECHO OFF
REM 準備命令處理器
SETLOCAL ENABLEEXTENSIONS
SETLOCAL DISABLEDELAYEDEXPANSION

REM 取得時、分、秒 、豪秒
SET Hour=%time:~0,2%
SET Minute=%time:~3,2%
SET Second=%time:~6,2%



:menuLOOP
FOR /F %%a IN ('TIME /T') DO set a=%%a
echo.
echo.=========================================================
echo.雞排飯好吃遊戲工具箱(Alpha0.1)
echo.現在時間%date% %Hour%:%Minute%:%Second%
echo.=========================================================
echo.
for /f "tokens=1,2,* delims=_ " %%A in ('findstr /b /c:":menu_" "%~f0"') do echo.  %%B  %%C
set choice=
echo.&set /p choice=請選擇一個選項或按 ENTER 退出: ||GOTO:EOF
echo.&call:menu_%choice%
GOTO:menuLOOP

::-----------------------------------------------------------
:: 選單功能在此以下定義
::-----------------------------------------------------------


:menu_1 開啟 TinyTask 滑鼠鍵盤重播(重複動作)
echo.[提示]功能使用請到雞排飯好吃YT觀看教學影片
REM 開啟 TinyTask.exe 的命令
cd /d "%~dp0tools"
echo 啟動中...
start "" "TinyTask.exe"
echo 操作完成
pause
cls
GOTO:EOF

:menu_2 開啟 AutoClicker 自動點擊器+滑鼠錄製(掛機、重複動作)
echo.[提示]功能使用請到雞排飯好吃YT觀看教學影片
REM 開啟 AutoClicker.exe 的命令
cd /d "%~dp0tools"
echo 啟動中...
start "" "AutoClicker.exe"
echo 操作完成
pause
cls
GOTO:EOF

:menu_3 啟動Roblox
REM 開啟 Roblox 的命令
cd /d "%~dp0tools"
echo 啟動中...
start roblox://
echo 操作完成
pause
cls
GOTO:EOF

:menu_4 啟動Roblox網頁
REM 開啟 Roblox網頁 的命令
cd /d "%~dp0tools"
echo 啟動中...
start roblox.com
echo 操作完成
pause
cls
GOTO:EOF

:menu_Q 退出
exit
