@echo off
setlocal enabledelayedexpansion

:: Demande à l'utilisateur de saisir la lettre du disque
set /p usbDrive="Entrez la lettre du disque amovible (ex: E): "

:: Vérification de si la lettre saisie est valide
if not exist "%usbDrive%:\" (
    echo La lettre de disque spécifiée n'existe pas.
    pause
    exit /b
)

echo Suppression des fichiers PNG, JPG, JPEG, BMP sur %usbDrive%...

:: Suppression des fichiers récursivement
for %%F in (png jpg jpeg bmp) do (
    del /s /q "%usbDrive%:\*.%%F"
)

echo Suppression terminée.
pause
