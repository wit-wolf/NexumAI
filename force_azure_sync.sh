#!/bin/bash

# Login to Azure (if not already logged in)
az login

# Set your Azure Web App name and Resource Group
WEBAPP_NAME="NexumAI"
RESOURCE_GROUP="Nexum_group"

# Force a sync from your GitHub repository
az webapp deployment source sync \
    --name $WEBAPP_NAME \
    --resource-group $RESOURCE_GROUP

# Restart the web app to ensure changes take effect
az webapp restart \
    --name $WEBAPP_NAME \
    --resource-group $RESOURCE_GROUP

echo "Force sync completed and app restarted"
