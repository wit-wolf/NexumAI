#!/bin/bash

# Login to Azure (if not already logged in)
az login

# Set your Azure Web App name and Resource Group
WEBAPP_NAME="NexumAI"
RESOURCE_GROUP="Nexum_group"

# Update the Web App to use Docker containers
az webapp config set --resource-group $RESOURCE_GROUP --name $WEBAPP_NAME --linux-fx-version "DOCKER|witwolfvic/python-api:latest"

# Configure Web App for Docker Compose
az webapp config container set --resource-group $RESOURCE_GROUP --name $WEBAPP_NAME --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml

echo "Web App configuration updated to use Docker containers"
