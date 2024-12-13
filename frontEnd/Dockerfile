# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json first to leverage Docker caching
COPY src/package.json src/package-lock.json /app/

# Install the dependencies
RUN npm install

# Copy the rest of the frontend files into the container
COPY src /app/

# Expose the port that the React app will run on
EXPOSE 3000

# Install and run the app using webpack-dev-server for hot reloading
CMD ["npm", "start"]
