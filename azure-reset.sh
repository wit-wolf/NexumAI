#!/bin/bash
# Replace <resource-group> and <app-name> appropriately.
az webapp deployment source config --name <app-name> --resource-group <resource-group> --repo-url ""
az webapp config appsettings delete --name <app-name> --resource-group <resource-group> --setting-names SCM_DO_BUILD_DURING_DEPLOYMENT WEBSITE_RUN_FROM_PACKAGE DOCKER_ENABLE_CI WEBSITES_PORT
