Steps to Setup
1) Clone & Create Node.js App

2) Add index.js, Dockerfile, .dockerignore
--Simple Express server in index.js.
--Dockerfile to containerize app.

3) Push to GitHub

git add .
git commit -m "Initial commit"
git push origin main

4)Add GitHub Secrets

--DOCKER_USERNAME → DockerHub username
--DOCKER_PASSWORD → DockerHub password/token
--DOCKER_REPO → your-dockerhub-username/app-name

5)Create Workflow File → .github/workflows/main.yml
--Install Node.js
--Run tests
--Build Docker image
--Push image to DockerHub

6)Trigger Pipeline
Push to main branch → GitHub Actions runs → Image pushed to DockerHub.

✅ Now every code push automatically builds & pushes Docker image!
