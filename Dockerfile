# Use the official Node.js image as the base image
FROM node:14

# Create a directory to hold the application code inside the image
WORKDIR /app

# Copy package.json and package-lock.json into the image
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the image
COPY . .
EXPOSE 3000
# Set the container's default command to start the application
CMD ["npm", "start"]

