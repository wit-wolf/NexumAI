FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Copy the FastAPI app into the image
COPY . /app

# The base image sets the default command to run the app with Uvicorn.
