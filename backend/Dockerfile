# Use the official Node.js image as the base image
FROM node:17-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm i

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 3500

# Start the server
CMD ["npm", "start"]