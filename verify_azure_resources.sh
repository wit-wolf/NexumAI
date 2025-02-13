#!/bin/bash

# Login to Azure (if not already logged in)
az login

# Set your Azure Web App name and Resource Group
WEBAPP_NAME="NexumAI"
RESOURCE_GROUP="Nexum_group"

# Verify Resource Group
az group show --name $RESOURCE_GROUP

# Verify App Service Plan
az appservice plan show --name ASP-Nexumgroup-ac09 --resource-group $RESOURCE_GROUP

# Verify Web App
az webapp show --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP

echo "Verification completed"
