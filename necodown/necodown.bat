@echo off
title necodown
set app=C:\Estu-dio\necodown
cd %app%
set b=0
set a=0
:start
cls
if %a%==1 echo Soubor byl vytvoren & set a=0
echo Vytvorit [1]   Upravit [2]    Odstranit [3]     Zavrit [4]
set/p zacatek=
if %zacatek%==1 goto vytvor
if %zacatek%==2 goto uprav
if %zacatek%==3 goto odstran
if %zacatek%==4 exit
goto start
:vytvor
cls
set/p jmeno=Zadejte jmeno souboru: 
if exist %jmeno%.md goto exist
echo %jmeno% > %jmeno%.md
set a=1
goto start
:uprav
cls 
set/p uziname=Zadejte jmeno souboru: 
if not exist %uziname%.md set b=1 & goto noexist
start notepad %uziname%.md 
goto start
:exist
cls
echo Tento program uz existuje...
pause > nul
goto vytvor
:noexist
cls
echo Tento soubor neexistuje!!
pause>nul
if %b%==1 goto uprav
if %b%==2 goto odstran
goto noexist
:odstran
cls
set/p jmeno=Zadejte nazev souboru: 
if not exist %jmeno% set b=2 & goto noexist
