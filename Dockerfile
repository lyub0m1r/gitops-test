# Use an official Node.js runtime as a parent image
FROM node:22

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY src/* .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD ["node", "server.js"]
