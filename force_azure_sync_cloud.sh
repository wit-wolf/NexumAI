#!/bin/bash

# Set your Azure Web App name and Resource Group
WEBAPP_NAME="NexumAI"
RESOURCE_GROUP="Nexum_group"
REPO_URL="https://github.com/wit-wolf/NexumAI"
BRANCH="main"

# Configure the deployment source
az webapp deployment source config \
    --name $WEBAPP_NAME \
    --resource-group $RESOURCE_GROUP \
    --repo-url $REPO_URL \
    --branch $BRANCH \
    --manual-integration

# Force a sync from your GitHub repository
az webapp deployment source sync \
    --name $WEBAPP_NAME \
    --resource-group $RESOURCE_GROUP

# Restart the web app to ensure changes take effect
az webapp restart \
    --name $WEBAPP_NAME \
    --resource-group $RESOURCE_GROUP

echo "Force sync completed and app restarted"
