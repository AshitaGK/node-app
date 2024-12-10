# Using official node image as base image
FROM node:jod-bullseye-slim

# Set working directory inside this container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into this containe
COPY package*.json ./

# install project dependencies inside this container
RUN npm install

# Copy rest of the application code
COPY . .

# Expose port 
EXPOSE 3000

# Run application code using node
CMD ["node","app.js"]