@echo off 
:inicio 
cls
echo ==========================
echo           Menu
echo ==========================
echo.
echo 1. Copiar Archivo
echo 2. Eliminar Archivo
:: Algunas ideas: 
::   - Renombrar archivo 
::   - Crear un archivo y agregarle manualmente su contenido (copy con)
::   - Copiar todos los archivos de una carpeta a otra (xcopy)
::   - Crear, renombrar o eliminar carpetas
::   - Mover archivos (move)
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

:: Condicional en caso las rutas indicadas no existan o esten mal escritas

if %errorlevel%==0 (
	:: Caso exitoso
    echo Archivo eliminado con exito. 
) else (
	:: Caso error
    echo [ERROR] Verificar que la ruta ingresada exista y este correcta.
)
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
