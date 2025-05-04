# CI/CD Pipeline with GitHub Actions & Docker

This project sets up a complete CI/CD pipeline using **GitHub Actions** to build, test, and deploy a Dockerized app locally, with images pushed to **Docker Hub**.

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

├── app.py # Flask app (or main app file)

├── Dockerfile # Docker build file

├── requirements.txt # Python dependencies

├── .github/workflows/

│ └── ci-cd.yml # GitHub Actions workflow

└── README.md # This file


---

## ⚙ Setup Instructions

### 1️⃣ Clone the repository

git clone https://github.com/satwikaasridhar/gitactions.git
cd gitactions
2️⃣ # Build and run locally (Docker)

docker build -t satwikaasridhar/myapp:latest .
docker run -d -p 5000:5000 satwikaasridhar/myapp:latest
Visit http://localhost:5000 to see the app.

3️⃣ # Configure Docker Hub
Create a Docker Hub repository (e.g., satwikaasridhar/myapp).

Generate Docker Hub access token for GitHub Actions.

# Add it as a GitHub secret:

`DOCKER_USERNAME`
`DOCKER_PASSWORD`

4️⃣ # GitHub Actions CI/CD Workflow
The .github/workflows/ci-cd.yml file:

Runs on every push.

Runs tests.

Builds the Docker image.

Pushes the image to Docker Hub.

🐳 # Pulling and Deploying Locally
On your local machine:

docker pull satwikaasridhar/myapp:latest

docker run -d -p 5000:5000 satwikaasridhar/gitactions:latest

📸 # Deliverables

✅ # GitHub repo: https://github.com/satwikaasridhar/gitactions
![Screenshot (99)](https://github.com/user-attachments/assets/40c7371b-f70b-4ba2-88fe-2d87cbb23aa3)

✅ # Docker Hub image
![Screenshot (102)](https://github.com/user-attachments/assets/ac3a8d87-8438-49f9-9098-e1f721be9bef)

✅ # CI/CD Workflow run results (see GitHub Actions tab)
![Screenshot (100)](https://github.com/user-attachments/assets/1739e85e-1de4-49c3-aca6-ef465b123f8e)

✅ # Screenshots of deployed app
![Screenshot (104)](https://github.com/user-attachments/assets/7fcfcd0f-4f5d-47ce-ae2f-f9f56858005d)
![Screenshot (105)](https://github.com/user-attachments/assets/dce7029d-b037-4b03-aca2-3908583f7bed)

