echo off
t
cls
color 1f
title APLICATIVO PARA GERENCIAMENTO DE REDES

:menu
time /t
date /t 



echo     ______________________________________________      
echo.                           
echo         SELECIONE UMA DAS OPCOES ABAIXO      
echo.                           
echo.                           
echo            (1) EXIBIR IP (simples)          
echo            (2) EXIBIR IP (completo)
echo            (3) EXIBIR ENTRADAS DE DNS
echo            (4) LIMPAR ENTRADAS DE DNS
echo            (5) EXCUTAR PING
echo            (6) COMANDO TRACERT
echo            (7) COMANDO PATHPING
echo            (8) EXIBIR MAC                           
echo     ______________________________________________
echo.
echo.

set /p op= DIGITE UMA OPCAO 

if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5
if %op% equ 6 goto 6
if %op% equ 7 goto 7
if %op% equ 8 goto 8

:1 

ipconfig 
time /t >> C:\Users\mayara.araujo
date /t >> C:\Users\mayara.araujo
ipconfig >> C:\Users\mayara.araujo
cls

goto menu
    
:2

ipconfig /all
time /t >> c:\relatorio.txt
date /t >> c:\relatorio.txt
ipconfig /all >> c:\relatorio.txt

cls

goto menu

:3

ipconfig /displaydns
time /t >> c:\relatorio.txt
date /t >> c:\relatorio.txt
ipconfig /displaydns >> c:\relatorio.txt
cls

goto menu

:4 

ipconfig /flushdns
cls

goto menu

:5 

echo Digite o IP
set /p ip =
echo Qual o numero requisicoes?
set /p num = 

IF  [%ip%] ([ping -n]) ["num%]

 ping %ip% -t
pause

echo.
echo Fim do comando ping!
pause




echo.

echo Fim do comando ping!

pause

 

echo.
echo Fim do comando ping!
pause
)

cls 


goto menu

:6

ping www.google.com.br
cls

goto menu

:7 

ping www.google.com.br
cls

goto menu

:8 

ping ww
cls

goto menu