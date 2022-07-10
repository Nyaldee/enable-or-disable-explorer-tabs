@echo off
chcp 65001>nul
Title Enable or disable tabs & Color 10
echo.Activer les onglets sur l'explorateur pour la build 22621.169 de Windows 11 ?
choice /C:ED /N /M "Enable tabs on explorer for Windows 11 build 22621.169 ? ['E'nable/'D'isable] : "
md "%Temp%\Bonjour"
if errorlevel 2 (
echo Disable tabs feature...
chcp 437>nul
:: https://github.com/thebookisclosed/ViVe
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/thebookisclosed/ViVe/releases/download/v0.3.1/ViVeTool-v0.3.1.zip', '%Temp%\Bonjour\ViVeTool.zip')"
powershell -Command "Expand-Archive -Path '%Temp%\ViVeTool.zip' -DestinationPath '%Temp%\Bonjour' -Force"
chcp 65001>nul
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /disable /id:36354489
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /disable /id:37634385
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /disable /id:39145991
rd "%Temp%\Bonjour" /s /q
)
echo Enable tabs feature...
chcp 437>nul
:: https://github.com/thebookisclosed/ViVe
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/thebookisclosed/ViVe/releases/download/v0.3.1/ViVeTool-v0.3.1.zip', '%Temp%\ViVeTool.zip')"
powershell -Command "Expand-Archive -Path '%Temp%\ViVeTool.zip' -DestinationPath '%Temp%\Bonjour' -Force"
chcp 65001>nul
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /enable /id:36354489
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /enable /id:37634385
start /wait "" "%Temp%\Bonjour\ViVeTool.exe" /enable /id:39145991
rd "%Temp%\Bonjour" /s /q
echo.L'activation est terminée, les modifications prendront effet après un redémarrage.
echo.Activation complete, the changes will take effect after a reboot.
pause
