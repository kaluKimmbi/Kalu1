# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Flask app
COPY app.py .

# Expose the port the app runs on
EXPOSE 8000

# Run the Flask application
CMD ["python", "app.py"]
