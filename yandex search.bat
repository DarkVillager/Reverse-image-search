@echo off
if NOT EXIST "C:\Windows\System32\paste.exe" ( 
echo Reqs: https://www.c3scripts.com/tutorials/msdos/paste.html#exe
echo Instal the requirement.
pause
exit )
set url1="https://yandex.com/images/search?source=collections&rpt=imageview&url="
Paste
set url2="https://tineye.com/search?url="
set url3="https://images.google.com/searchbyimage?image_url="
for /f %%i in ('paste') do set PASTED=%%i
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a:%%b)
set urls1=%url1%%pasted%
set urls2=%url2%%pasted%
set urls3=%url3%%pasted%
start chrome %urls1%
start chrome %urls2%
start chrome %urls3%
echo off
pause
