@ECHO OFF
REM �ǳƩR�O�B�z��
SETLOCAL ENABLEEXTENSIONS
SETLOCAL DISABLEDELAYEDEXPANSION

REM ���o�ɡB���B�� �B����
SET Hour=%time:~0,2%
SET Minute=%time:~3,2%
SET Second=%time:~6,2%



:menuLOOP
FOR /F %%a IN ('TIME /T') DO set a=%%a
echo.
echo.=========================================================
echo.���ƶ��n�Y�C���u��c(Alpha0.1)
echo.�{�b�ɶ�%date% %Hour%:%Minute%:%Second%
echo.=========================================================
echo.
for /f "tokens=1,2,* delims=_ " %%A in ('findstr /b /c:":menu_" "%~f0"') do echo.  %%B  %%C
set choice=
echo.&set /p choice=�п�ܤ@�ӿﶵ�Ϋ� ENTER �h�X: ||GOTO:EOF
echo.&call:menu_%choice%
GOTO:menuLOOP

::-----------------------------------------------------------
:: ���\��b���H�U�w�q
::-----------------------------------------------------------


:menu_1 �}�� TinyTask �ƹ���L����(���ưʧ@)
echo.[����]�\��ϥνШ����ƶ��n�YYT�[�ݱоǼv��
REM �}�� TinyTask.exe ���R�O
cd /d "%~dp0tools"
echo �Ұʤ�...
start "" "TinyTask.exe"
echo �ާ@����
pause
cls
GOTO:EOF

:menu_2 �}�� AutoClicker �۰��I����+�ƹ����s(�����B���ưʧ@)
echo.[����]�\��ϥνШ����ƶ��n�YYT�[�ݱоǼv��
REM �}�� AutoClicker.exe ���R�O
cd /d "%~dp0tools"
echo �Ұʤ�...
start "" "AutoClicker.exe"
echo �ާ@����
pause
cls
GOTO:EOF

:menu_3 �Ұ�Roblox
REM �}�� Roblox ���R�O
cd /d "%~dp0tools"
echo �Ұʤ�...
start roblox://
echo �ާ@����
pause
cls
GOTO:EOF

:menu_4 �Ұ�Roblox����
REM �}�� Roblox���� ���R�O
cd /d "%~dp0tools"
echo �Ұʤ�...
start roblox.com
echo �ާ@����
pause
cls
GOTO:EOF

:menu_Q �h�X
exit
