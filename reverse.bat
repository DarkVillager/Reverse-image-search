@REM @echo off
@REM if NOT EXIST "C:\Windows\System32\paste.exe" ( 
@REM echo Reqs: https://www.c3scripts.com/tutorials/msdos/paste.html#exe
@REM echo Instal the requirement.
@REM pause
@REM exit )
@REM set url1="https://yandex.com/images/search?source=collections&rpt=imageview&url="
@REM Paste
@REM set url2="https://tineye.com/search?url="
@REM set url3="https://images.google.com/searchbyimage?image_url="
@REM for /f %%i in ('paste') do set PASTED=%%i
@REM For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
@REM For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
@REM set urls1=%url1%%pasted%
@REM set urls2=%url2%%pasted%
@REM set urls3=%url3%%pasted%
@REM start chrome %urls1%
@REM start chrome %urls2%
@REM start chrome %urls3%
@REM echo off
@REM pause

powershell.exe -executionpolicy bypass -scope process -file "reverse.ps1"