# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install FastAPI and uvicorn
RUN pip install fastapi uvicorn

# Copy service.py into the container
COPY service.py .

# Expose port 8000
EXPOSE 8080

# Run the FastAPI app with uvicorn
CMD ["uvicorn", "service:astha", "--host", "0.0.0.0", "--port", "8080"]
