# How to Configure Deployment in Azure

1. In the Azure Portal, navigate to your App Service (NexumAI).
2. Select "Deployment Center" from the left menu.
3. Under "Source", choose "GitHub" and sign in if prompted.
4. Select your organization ("wit-wolf"), repository ("NexumAI"), and branch ("main").
5. Choose "Workflow" or "Docker Compose" (depending on your setup) for the build provider.
6. Click "Save" or "Finish" to enable continuous deployment.
7. Return to "Deployment Center" → "Logs" to view future deployments.

With this setup, Azure will track your repository on the "main" branch and display all deployments in the Deployment Center logs.
