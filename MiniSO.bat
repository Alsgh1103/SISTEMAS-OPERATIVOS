@echo off 
:inicio 
cls
echo.
echo ---Menu---
echo 1. Copiar Archivo
echo 2. Eliminar Archivo
echo 0. Salir
::Opciones restante por completar son 3
echo.

set /p opcion="Opcion: "
if "%opcion%"=="1" goto copiar
if "%opcion%"=="2" goto eliminar
if "%opcion%"=="0" goto salir

:copiar
::ingresar scripts para copiar

:eliminar
::ingresar scripts para eliminar

:salir
echo.
echo Saliendo del programa
pause
exit
