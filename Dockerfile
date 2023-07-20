# Use a Node.js base image (you can replace "node:14" with your preferred Node.js version)
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the application files from the host into the container's /app directory
COPY /var/lib/jenkins/workspace/calculator-app-jenkins/user-ui/src/app.js /app/

# Install dependencies (if your app requires any, adjust accordingly)
RUN npm install

# Specify the command to run your application
CMD ["node", "app.js"]
