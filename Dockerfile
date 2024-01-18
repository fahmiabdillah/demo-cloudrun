# Use an official lightweight Node.js image
FROM node:latest

# Set the working directory
WORKDIR /usr/src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the application files
COPY . .

# Expose the port on which your app will run
EXPOSE 8080

# Define environment variable
ENV NODE_ENV production

# Command to run your application
CMD npm start
