# 🎨 Weather Dashboard (Frontend Microservice)

[![CI for Weather Frontend](https://github.com/moti-art/weather_frontend/actions/workflows/ci.yaml/badge.svg)](https://github.com/moti-art/weather_frontend/actions)

The **Weather Dashboard** is the user-facing component of the project. It provides a clean, responsive interface for users to monitor weather conditions across global hubs.

## 🚀 Key Features
* **Interactive Dashboard:** Select cities from a dropdown to get instant weather updates.
* **Dynamic Connectivity:** Connects to the Backend microservice via environment variables.
* **GitOps Powered:** Automated deployments using GitHub Actions and ArgoCD.
* **Dockerized:** Light-weight container optimized for production.

## 🛠️ Tech Stack
* **Framework:** Flask (Python)
* **Templating:** Jinja2 (HTML/CSS)
* **CI/CD:** GitHub Actions
* **Orchestration:** Kubernetes (K3s on AWS)
* **Deployment:** GitOps via ArgoCD

## 🌐 Environment Variables
The frontend requires the Backend API URL to function. This is managed via the `BACKEND_URL` variable:
* **In Development:** `http://localhost:5000`
* **In Kubernetes (Service Discovery):** `http://weather-backend:5000`

## 💻 Setup & Development

### Local Execution
1.  **Clone the Repo:**
    ```bash
    git clone [https://github.com/moti-art/weather_frontend.git](https://github.com/moti-art/weather_frontend.git)
    cd weather_frontend
    ```
2.  **Install Dependencies:**
    ```bash
    pip install -r requirements.txt
    ```
3.  **Run with Backend URL:**
    ```bash
    export BACKEND_URL="http://localhost:5000"
    python app.py
    ```

### Docker Support
Build the frontend image:
```bash
docker build -t motinet/weather-frontend:latest .

Run the container:

Bash
docker run -d -p 5001:5001 --name weather-frontend -e BACKEND_URL="http://backend-ip:5000" motinet/weather-frontend
📍 Tracked Locations
The dashboard currently monitors:

🏙️ New York

🇦🇺 Sydney

🇿🇦 Cape Town

🇹🇭 Bangkok

🔄 Automated Deployment (GitOps)
This repository is part of a Full-Cycle CI/CD system:

Code Change: Developer pushes to main.

CI Build: GitHub Actions builds a new Docker image with a SHA tag.

GitOps Push: The pipeline automatically updates the weather-gitops repository.

K8s Sync: ArgoCD detects the change and updates the pods in the AWS Cluster.

Maintained by Moti Levi