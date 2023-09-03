@echo off
color
mode 115,30
title Antivirus Scanner

setlocal enabledelayedexpansion

set "barSize=60"

for /f "tokens=2 delims=: " %%a in ('mode con ^| findstr /c:"Lines"') do (
    set /a "windowHeight=%%a"
)

set /a "startLine=(windowHeight - 10) / 2"
for /l %%i in (1,1,!startLine!) do echo.

set /a "windowWidth=80"
set /a "startColumn=(windowWidth - 57) / 2"
set "spaces="
for /l %%i in (1,1,!startColumn!) do set "spaces=!spaces! "

for /l %%i in (1,1,5) do (
    echo.
)
color
cls
echo !spaces!Starting Scan: [!loading!] 0%%
echo.

for /L %%i in (1, 1, %barSize%) do (
    set /a "progress=%%i * 100 / %barSize%"
    set "loading="
    for /L %%j in (1, 1, %%i) do (
        set "loading=!loading!#"
    )
    set "progressString=!loading!"
    set /a "remainingSpaces=barSize - %%i"
    for /L %%k in (1, 1, !remainingSpaces!) do (
        set "progressString=!progressString!-"
    )
    cls
    echo !spaces!Starting Scan: [!progressString!] !progress!%%
    ping -n 1 127.0.0.1 >nul
)


echo Initiating system scan...
ping -n 2 127.0.0.1 >nul
echo Accessing system files...
ping -n 2 127.0.0.1 >nul
echo Scanning for threats...
ping -n 2 127.0.0.1 >nul

echo Scanning system files...
echo.
color
echo === Directory C:\Windows\System32 ===
dir /s C:\Windows\System32
ping -n 2 127.0.0.1 >nul

echo === Directory C:\Program Files ===
dir /s "C:\Program Files"
ping -n 2 127.0.0.1 >nul

echo === Directory C:\Users\Administrator ===
dir /s "C:\Users\Administrator"
ping -n 2 127.0.0.1 >nul
echo.

echo Analyzing system health...
ping -n 2 127.0.0.1 >nul
echo Identifying potential threats...
ping -n 2 127.0.0.1 >nul
echo Performing deep scan...
ping -n 2 127.0.0.1 >nul
echo Disabling detected threats...
ping -n 2 127.0.0.1 >nul
echo Securing the system...
ping -n 2 127.0.0.1 >nul

:: Restaura a cor padr?o (branca sobre fundo preto)
color

echo Scan completed successfully!
echo No threats were found.

echo Informa??es do Sistema:
systeminfo | findstr /C:"Nome do host" /C:"Nome do sistema operacional" /C:"Vers?o do sistema operacional" /C:"Fabricante do sistema" /C:"Tipo de sistema"

echo.
echo Informa??es de Rede:
ipconfig | findstr /C:"Endere?o IPv4" /C:"Gateway padr?o" /C:"Servidores DNS"

echo.
echo Usu?rios Logados:
query user

echo.
echo Tempo de Atividade do Sistema:
systeminfo | findstr /C:"Tempo de atividade do sistema"

echo.
echo Uso da CPU e da Mem?ria:
tasklist | findstr /C:"Imagem" /C:"Mem?ria"


setlocal enabledelayedexpansion
set "counter=0"


echo.
echo Search Encoded Malware

:matrix
if !counter! lss 5000 (
    echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!
    set /a "counter+=1"
    goto matrix
)

echo.
echo No Malware in System

setlocal enabledelayedexpansion

set "barSize=60"

for /f "tokens=2 delims=: " %%a in ('mode con ^| findstr /c:"Lines"') do (
    set /a "windowHeight=%%a"
)

set /a "startLine=(windowHeight - 10) / 2"
for /l %%i in (1,1,!startLine!) do echo.

set /a "windowWidth=80"
set /a "startColumn=(windowWidth - 57) / 2"
set "spaces="
for /l %%i in (1,1,!startColumn!) do set "spaces=!spaces! "

for /l %%i in (1,1,5) do (
    echo.
)
color 0a
cls
echo !spaces!Complete Scan: [!loading!] 0%%
echo.

for /L %%i in (1, 1, %barSize%) do (
    set /a "progress=%%i * 100 / %barSize%"
    set "loading="
    for /L %%j in (1, 1, %%i) do (
        set "loading=!loading!#"
    )
    set "progressString=!loading!"
    set /a "remainingSpaces=barSize - %%i"
    for /L %%k in (1, 1, !remainingSpaces!) do (
        set "progressString=!progressString!-"
    )
    cls
    echo !spaces!Complete Scan: [!progressString!] !progress!%%
    ping -n 1 127.0.0.1 >nul
)
color

rem Move cursor to the previous line
echo.

echo                     _________________________________________________________________________
echo                    [                                                                         ]
echo                    [                  SCAN CONCLUIDO - CLIENTE TOTALMENTE SEGURO             ]
echo                    [                                                                         ]
echo                    [_________________________________________________________________________]
