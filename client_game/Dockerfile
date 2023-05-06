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

# # Build the frontend application
# RUN npm run build
RUN npm rebuild esbuild

# Expose the port your app will run on
EXPOSE 5173

# Start the server
CMD ["npm", "run", "dev"]