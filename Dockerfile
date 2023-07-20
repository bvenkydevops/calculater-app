# Use a Node.js base image (you can replace "node:14" with your preferred Node.js version)
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to install dependencies
COPY user-ui/package*.json /app/

# Install project dependencies
RUN npm install

# Copy the entire user-ui directory to the container's /app directory
COPY user-ui /app/user-ui

# Specify the command to run your React app
CMD ["npm", "start"]
