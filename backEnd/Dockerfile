# Use Node.js as the base image
FROM node:18

# Set the working directory
WORKDIR /src

# Copy package.json and install dependencies
COPY src/package.json .
RUN npm install

# Copy the source code
COPY . /src/

# Expose the backend port
EXPOSE 5000

# Start the backend server
CMD ["npm", "start"]
