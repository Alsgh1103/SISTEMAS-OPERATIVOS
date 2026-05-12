@echo off 
:inicio 
cls
echo ==========================
echo           Menu
echo ==========================
echo.
echo 1. Copiar Archivo
echo 2. Eliminar Archivo
echo 3. Renombrar Archivo
echo 4. Crear Archivo
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
if "%opcion%"=="3" goto renombrar
if "%opcion%"=="4" goto crear
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

:renombrar
cls
set /p rAntiguo=Ruta completa actual:
set /p rNuevo=Nuevo nombre:
ren "%rAntiguo%" "%rNuevo%"
if %errorlevel%==0 (echo Renombrado con exito.) else (echo Error al renombrar.)
pause
goto inicio

:crear
cls
echo.
set /p nArchivo=Nombre del nuevo archivo (ej. notas.txt): 
echo Escribe tu contenido abajo. Al terminar presiona CTRL+Z y luego ENTER.
echo.
copy con "%nArchivo%"
echo.
echo Archivo guardado.
pause
goto inicio

:salir
echo.
echo Gracias por usar el menu.
echo Saliendo del programa...
echo.
pause
exit
