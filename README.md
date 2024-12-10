# CI/CD Pipeline of Node.js application using GitHub Actions
Table of Contents
- Introduction
- Features
- Prerequisites
- CI/CD Pipeline Overview
- Deployment Steps

## Introduction
This basic Node.js application is a practical example of automating deployment process of a Kubernetes cluster using GitHub Actions. 

## Features
* **Docker Integration:** Building Docker Image and pushing the image to a container registry(in this case, to Docker Hub) seamlessly.
* **Kubernetes Deployment:** Deploying the application to a Kubernetes cluster with a single push.
* **Notification:** Receive real-time notification alert on Slack for deployment success or failure.

## Prerequisite
Ensure the following are installed:
* Node.js and npm
* Docker installed
* Access to Kubernetes cluster(e.g., Minikube for local development or EKS,GKE,etc for production deployment.)
  
## CI/CD Pipeline overview:
The pipeline is defined in `.github/workflows/ci-cd.yml` and consists of **2** main jobs:
 1. **Build:** Build the Docker image.
 2. **Deploy:** Deploy the image to Kubernetes cluster **and** send notification.

## Deployment Steps
- **Configure Secrets** in your GitHub repository for the following:
   1. `DOCKER_USERNAME`: Your Docker Hub username for login.
   2. `DOCKER_PASSWORD`: Docker Hub password for login.
   3. `KUBE_CONFIG`: Base64 encode Kubernetes config file.
   4. `SLACK_WEBHOOK_URL`: The WebHook URL for notification.

- **Pull request** to run tasks automatically on the `main` branch.
   




