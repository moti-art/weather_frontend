# Weather Dashboard - Frontend Microservice

This is the Frontend microservice of the Weather App. It provides a user-friendly interface to view live weather data from four major cities.

## How to Run Locally
1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the application:
   ```bash
   python app.py
   ```

## Running with Docker
1. Build the image:
   ```bash
   docker build -t weather-frontend .
   ```
2. Run the container:
   ```bash
   docker run -d -p 5001:5001 --name weather-frontend --add-host=host.docker.internal:host-gateway weather-frontend
   ```

## Configuration
Connects to backend via `BACKEND_URL` environment variable (Default: http://localhost:5000).
