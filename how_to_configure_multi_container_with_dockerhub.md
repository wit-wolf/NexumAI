













This lets your Azure Web App fetch images from Docker Hub, spin up multiple containers via docker-compose.yml, and keep everything in sync.6. When you push changes to Docker Hub, Azure will pull the updated images on restart or deployment.5. Click “Save” to finalize multi-container deployment.   - Upload or reference your docker-compose.yml.   - Provide your Docker Hub credentials in “Container settings.”   - Select “Docker Hub” as your image source.4. If using Docker Compose:3. Under “Settings,” change the “Publish” option to “Docker Container” → “Single Container” or “Docker Compose” (as needed).2. In Azure Portal, navigate to your App Service → “Deployment Center.”   ```       # ...existing code...         - "8080:8080"       ports:       image: witwolfvic/budibase:latest     budibase:       # ...existing code...         - "8000:8000"       ports:       image: witwolfvic/python-api:latest     python-api:   services:   version: '3'   ```yaml1. Place your docker-compose.yml in the repository root:# How to Configure a Multi-Container App using Docker Compose and Docker Hub