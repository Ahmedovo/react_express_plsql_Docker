# Use Node.js as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY src/package.json src/package-lock.json /app/

# Install backend dependencies
RUN npm install

# Install nodemon globally for auto-reloading during development
RUN npm install -g nodemon

# Copy the rest of the source code into the container
COPY src /app/

# Expose the backend port
EXPOSE 5000

# Run the backend server with nodemon for auto-reloading
CMD ["nodemon", "server.js"]
