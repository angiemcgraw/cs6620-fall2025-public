# Use an appropriate Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Installs dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Exposes the application port (port 5000)
EXPOSE 5000

# Runs the Flask application 
CMD ["python", "app.py"]
