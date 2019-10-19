rem cd C:\Program Files\Microsoft SQL Server\90\Tools\Binn
sqlcmd -S localhost\SQLEXPRESS -d master -i wlcBak.sql
echo ****************
echo **** GOTOVO ****
echo ****************
pause 0
