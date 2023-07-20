# Use a base image (you can replace "node:14" with your preferred Node.js version)
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the /app directory inside the container
COPY app.js /app/

# Install dependencies (if your app requires any)
# RUN npm install

# Specify the command to run your application (if applicable)
# CMD ["node", "app.js"]
