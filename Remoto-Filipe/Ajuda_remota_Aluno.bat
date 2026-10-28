@echo off
set HOST=192.168.0.100
echo Sessoes ativas em %HOST%:
echo.
query session /server:%HOST%
echo.
set /p ID=Escreve o numero da sessao (coluna ID) e prime Enter: 
mstsc /v:%HOST% /shadow:%ID% /control /noconsentprompt
pause
