# CI/CD Pipeline of Node.js application using GitHub Actions
## Step 1: Create a basic Node.js using Express
For this project, we create a standard Hello World! application using Express.
## Step 2: Containerize Node.js Application
Created a simple Dockerfile within Node.js project directory.
### Step 2.1: Build the Docker Image
Once the Dockerfile is created, build the Docker Image.Eg:
```
docker build -t docker_username/node-app .
```
### Sep 2.2: Push Image to Docker Hub
```
docker push docker_username/node-app:tagname
```


