# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application code to the container's working directory
COPY . .

# Expose the port that your application listens on (replace 3000 with the appropriate port)
EXPOSE 3000

# Command to start your Node.js application (replace app.js with the entry point of your app)
CMD ["node", "app.js"]
