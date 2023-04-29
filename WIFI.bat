@echo off
color a
echo ------------------------------------
echo 1 - Activar Ethernet
echo 2 - Desactivar Ethernet
echo ------------------------------------
set /p opcion=Seleccione una opcion: 
if %opcion%==1 (
netsh interface set interface "Ethernet" admin=enabled
echo Adaptador activado.
) else if %opcion%==2 (
netsh interface set interface "Ethernet" admin=disabled
echo Adaptador desactivado.
) else (
echo Opcion no valida.
)
pause