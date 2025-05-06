# Use a Python base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port your application runs on (adjust if needed)
EXPOSE 80

# Define the command to run your application (adjust based on your app.py)
CMD ["python", "app.py"]
