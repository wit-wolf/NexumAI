@echo off
cd /d "c:\Users\werne\my-webapp\NexumAI"
REM Create a ZIP package of your project, forcing overwrite if needed
powershell -Command "Compress-Archive -Path .\* -DestinationPath .\app.zip -Force"
REM Log in to Azure (opens browser for authentication)
az login
REM Deploy the ZIP package to your Azure Web App using details from azure_config.md
az webapp deployment source config-zip --resource-group Nexum_group --name Nexum --src app.zip
pause
