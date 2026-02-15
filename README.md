# Weather Dashboard - Frontend Microservice

This is the Frontend microservice of the Weather App. It provides a user-friendly interface to view live weather data from four major cities.

## How to Run Locally
1. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
Configure Backend URL:
The frontend expects the backend to be available. By default, it looks for http://localhost:5000.
If your backend is running elsewhere, set the environment variable:

Bash
export BACKEND_URL="http://<your-backend-ip>:5000"
Run the application:

Bash
python app.py
Access the UI: Open http://localhost:5001 in your browser.

Running with Docker
Build the image:

Bash
docker build -t weather-frontend .
Run the container:

Bash
docker run -d -p 5001:5001 --name weather-frontend --add-host=host.docker.internal:host-gateway weather-frontend
Dropdown Options for Cities
The dashboard allows you to fetch weather data for the following locations:

New York

Sydney

Cape Town

Bangkok

Screenshot of Expected UI