@echo off
md "C:\Program Files\WLC"
md "C:\Program Files\WLC\INI"
copy WLC.exe "C:\Program Files\WLC"
copy INI\*.* "C:\Program Files\WLC\INI"
echo ****************
echo **** GOTOVO ****
echo ****************
pause 0
