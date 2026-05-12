@echo off 
:inicio 
cls
echo =============
echo 	 Menu
echo =============
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
cls
echo.
echo Indicar la ruta completa de los archivos (ej. C:\fotos\claseSO.jpg)
echo.
set /p dirOrigen=Ruta origen: 
echo.
set /p dirDestino=Ruta destino: 

:: Se utiliza el comando copy "origen" "destino"
copy "%dirOrigen%" "%dirDestino%"
echo.

pause
goto inicio

:eliminar
cls
echo.
set /p elim=Ruta completa del archivo a eliminar (ej. C:\fotos\claseSO.jpg)   

del "%elim%"
echo.
echo El archivo fue eliminado con exito
echo.

pause
goto inicio

:salir
echo.
echo Gracias por usar el menu.
echo Saliendo del programa...
echo.
pause
exit
