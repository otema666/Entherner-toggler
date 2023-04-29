@echo off
color a
echo ------------------------------------
echo 1 - Activate Ethernet
echo 2 - Disable Ethernet
echo ------------------------------------
set /p opcion=Select an option: 
if %opcion%==1 (
netsh interface set interface "Ethernet" admin=enabled
echo Adapter activated.
) else if %opcion%==2 (
netsh interface set interface "Ethernet" admin=disabled
echo Adapter disabled.
) else (
echo Invalid option.
)
pause