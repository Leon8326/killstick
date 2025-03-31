@echo off
setlocal

rem Call VBScript to capture the key press
for /f "delims=" %%i in ('cscript //nologo keyPress.vbs') do set key=%%i
echo %key% >> keylog.txt

pause
