@echo Reqs: https://www.c3scripts.com/tutorials/msdos/paste.html#exe
@echo off
set url="https://yandex.com/images/search?source=collections&rpt=imageview&url="
Paste
for /f %%i in ('paste') do set PASTED=%%i
set urls=%url%%pasted%
start chrome %urls%
@echo on
@echo ""
@echo Searching yandex for %pasted%
pause
