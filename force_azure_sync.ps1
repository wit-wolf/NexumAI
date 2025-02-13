# Ensure Azure PowerShell module is loaded
if (!(Get-Module -ListAvailable -Name Az.Websites)) {
    Install-Module -Name Az.Websites -Force -AllowClobber
}

# Variables
$webAppName = "NexumAI"
$resourceGroup = "Nexum_group"

# Connect to Azure (if not already connected)
if (!(Get-AzContext)) {
    Connect-AzAccount
}

# Force sync from GitHub
Invoke-AzWebAppSourceControl -ResourceGroupName $resourceGroup -Name $webAppName

# Restart the web app
Restart-AzWebApp -ResourceGroupName $resourceGroup -Name $webAppName

Write-Host "Force sync completed and app restarted"
