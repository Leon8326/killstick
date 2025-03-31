@echo off
setlocal

rem Call PowerShell script to capture the key press
for /f "delims=" %%i in ('powershell -Command "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class KeyPress { [DllImport(\"user32.dll\")] public static extern short GetAsyncKeyState(int vKey); }'; [Console]::Write('Press any key...'); while ($true) { $key = [System.Console]::ReadKey($true); [Console]::WriteLine($key.Key); break }"') do set key=%%i

rem Capture the key
echo %key% >> keylog.txt

pause
