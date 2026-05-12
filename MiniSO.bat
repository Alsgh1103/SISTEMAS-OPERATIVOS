@echo off 
:inicio 
cls
echo ==========================
echo           Menu
echo ==========================
echo.
echo 1. Crear Archivo
echo 2. Eliminar Archivo
echo 3. Copiar Archivo
echo 4. Renombrar Archivo
echo 5. Mover Archivo
echo 6. Crear Carpeta
echo 7. Eliminar Carpeta
echo 8. Copiar Carpeta
echo 9. Renombrar Carpeta
echo 0. Salir
echo.

set /p opcion="Opcion: "
if "%opcion%"=="1" goto crear
if "%opcion%"=="2" goto eliminar
if "%opcion%"=="3" goto copiar
if "%opcion%"=="4" goto renombrar
if "%opcion%"=="5" goto mover
if "%opcion%"=="6" goto crearCarpeta
if "%opcion%"=="7" goto eliminarCarpeta
if "%opcion%"=="8" goto copiarCarpeta
if "%opcion%"=="9" goto renombrarCarpeta 
if "%opcion%"=="0" goto salir

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

:renombrar
cls
set /p rAntiguo=Ruta completa actual:
set /p rNuevo=Nuevo nombre:
ren "%rAntiguo%" "%rNuevo%"
if %errorlevel%==0 (echo Renombrado con exito.) else (echo Error al renombrar.)
pause
goto inicio

:mover
cls
set /p mOrigen=Ruta del archivo: 
set /p mDestino=Carpeta destino: 
move "%mOrigen%" "%mDestino%"
pause
goto inicio


:crearCarpeta
cls
echo.
set /p nuevo=Ruta y nombre de la nueva carpeta(ej. C:\videos\nombre_carpeta):
md "%nuevo%"
if %errorlevel%==0 (echo Carpeta nueva creada.) else (echo Error al crear la carpeta.)
echo.
pause
goto inicio

:copiarCarpeta
cls
echo.
echo Indicar la ruta completa de las carpetas (ej. C:\fotos\claseSO)
echo.
set /p dirOrigen=Ruta origen:
echo.
set /p dirDestino=Ruta destino:
xcopy "%dirOrigen%" "%dirDestino%" /E /I
echo.
echo Carpeta copiada con exito.
pause
goto inicio



:salir
echo.
echo Gracias por usar el menu.
echo Saliendo del programa...
echo.
pause
exit



