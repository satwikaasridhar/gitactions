# CI/CD Pipeline with GitHub Actions & Docker

This project sets up a complete CI/CD pipeline using **GitHub Actions** to build, test, and deploy a Dockerized app locally (or on Minikube), with images pushed to **Docker Hub**.

---

## 🚀 Project Overview

- **Language**: Python (Flask) or Node.js (adjust as needed)
- **Tools**: GitHub Actions, Docker, Docker Hub, Minikube (optional)
- **Pipeline Stages**:
  1. Run unit tests
  2. Build Docker image
  3. Push Docker image to Docker Hub
  4. Deploy and run the container locally

---

## 📂 Project Structure

.
├── app.py # Flask app (or main app file)
├── Dockerfile # Docker build file
├── docker-compose.yml # (optional) Compose setup
├── requirements.txt # Python dependencies
├── .github/workflows/
│ └── ci-cd.yml # GitHub Actions workflow
└── README.md # This file

yaml
Copy
Edit

---

## ⚙ Setup Instructions

### 1️⃣ Clone the repository
```bash
git clone https://github.com/satwikaasridhar/gitactions.git
cd gitactions
2️⃣ Build and run locally (Docker)
bash
Copy
Edit
docker build -t satwikaasridhar/myapp:latest .
docker run -d -p 5000:5000 satwikaasridhar/myapp:latest
Visit http://localhost:5000 to see the app.

3️⃣ Configure Docker Hub
Create a Docker Hub repository (e.g., satwikaasridhar/myapp).

Generate Docker Hub access token for GitHub Actions.

Add it as a GitHub secret:

DOCKER_USERNAME

DOCKER_PASSWORD

4️⃣ GitHub Actions CI/CD Workflow
The .github/workflows/ci-cd.yml file:

Runs on every push.

Runs tests.

Builds the Docker image.

Pushes the image to Docker Hub.

🐳 Pulling and Deploying Locally
On your local machine (or Minikube):

bash
Copy
Edit
docker pull satwikaasridhar/myapp:latest
docker run -d -p 5000:5000 satwikaasridhar/myapp:latest
📸 Deliverables
✅ GitHub repo: https://github.com/satwikaasridhar/gitactions
✅ Docker Hub image
✅ CI/CD Workflow run results (see GitHub Actions tab)
✅ Screenshots of deployed app 
