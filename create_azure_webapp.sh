#!/bin/bash

# Login to Azure (if not already logged in)
az login

# Set your Azure Web App name and Resource Group
WEBAPP_NAME="NexumAI"
RESOURCE_GROUP="Nexum_group"
LOCATION="southafricanorth"
PLAN_NAME="ASP-Nexumgroup-ac09"
SKU="B1"

# Create Resource Group
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create App Service Plan
az appservice plan create --name $PLAN_NAME --resource-group $RESOURCE_GROUP --location $LOCATION --sku $SKU --is-linux

# Create Web App
az webapp create --resource-group $RESOURCE_GROUP --plan $PLAN_NAME --name $WEBAPP_NAME --deployment-container-image-name witwolfvic/python-api:latest

# Configure Web App for Docker Compose
az webapp config container set --resource-group $RESOURCE_GROUP --name $WEBAPP_NAME --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml

# Set environment variables
az webapp config appsettings set --resource-group $RESOURCE_GROUP --name $WEBAPP_NAME --settings \
  DATABASE_URL="your_actual_azure_sql_connection_string" \
  DB_PASSWORD="Sh@k@831025" \
  JWT_SECRET="noanola" \
  PORT="8000" \
  DOCKER_ENABLE_CI="true" \
  deployment_branch="main"

echo "Web App created and configured successfully"
