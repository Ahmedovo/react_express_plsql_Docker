# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /src

# Copy the package.json and package-lock.json first to leverage Docker caching
COPY src/package.json src/package-lock.json /src/

# Install the dependencies
RUN npm install

# Copy the rest of the frontend files into the container
COPY src /src/

# Build the React app
RUN npm run build

# Serve the app (use a static file server)
RUN npm install -g serve

# Expose the port that the React app will run on
EXPOSE 80

# Run the app using serve
CMD ["serve", "-s", "build"]
