# Azure App Service Configuration and Recommended Changes

## Current Settings (from JSON view)
- **Resource Group:** Nexum_group
- **Status:** Running
- **Location:** South Africa North
- **Subscription:** Azure subscription 1  
  **Subscription ID:** 7ca07e26-67b7-4965-bba3-ba04e23272e2
- **Default Domain:** nexum-apgngcfcencgheas.southafricanorth-01.azurewebsites.net
- **App Service Plan:** ASP-Nexumgroup-ac09 (B1: 1)
- **Operating System:** Linux
- **Health Check:** Not Configured
- **GitHub Project:** [NexumAI](https://github.com/wit-wolf/NexumAI)
- **Web App Name:** Nexum
- **Publishing Model:** Code
- **Runtime Stack:** Node - 22-lts

## Additional Hosting Details
- **Plan Type:** App Service plan  
  **Plan Name:** ASP-Nexumgroup-ac09  
  **Operating System:** Linux  
  **Instance Count:** 1  
  **SKU and Size:** Basic (B1)
- **Deployment Provider:** GitHub Actions  
  **Last Deployment:** Failed on Thursday, February 13, 08:41:12 AM
- **Outbound IP Addresses:** 20.87.195.148, 20.87.195.159, 20.87.196.175, 20.87.196.194, 20.87.196.210, 20.87.196.237, 20.87.80.65, plus additional IPs

## Recommended Changes for Multi-Container Deployment

- **Publishing Model:** Switch from Code to Custom Container.
- **Runtime Stack:** Change from Node to Docker (multi-container) to allow deployment via your `docker-compose.yml` file.
- **Deployment:** Configure the Deployment Center on Azure to use the multi-container option.
- **Environment Variables:** Update settings (e.g., `DATABASE_URL`, `PORT`) to match your Docker configuration and Azure SQL connection.
- **GitHub Actions:** Ensure continuous deployment is configured to pick the latest multi-container configuration.

## Deployment Steps in Azure Portal

1. Navigate to your Azure Web App.
2. Go to **Deployment Center** and change the configuration to use a custom container.
3. Upload or point to your `docker-compose.yml` file.
4. Verify environment variables and connection strings, especially for Azure SQL.
5. Redeploy your app and monitor the logs to ensure the multi-container setup is running correctly.

## Additional Considerations

- Enable a health check if needed.
- Verify the custom domain and any tags as required.
- Scale your App Service Plan if necessary to support multi-container workloads.
