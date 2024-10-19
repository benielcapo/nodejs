# Use the official Node.js image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to run your application
CMD ["node", "node"]  # Replace 'node' with the name of your Node.js file if different
