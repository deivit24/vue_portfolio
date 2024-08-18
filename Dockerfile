# Use an official Node.js image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Vue.js project
RUN npm run build

# Expose port 8081
EXPOSE 8081

# Start the application
CMD ["npm", "run", "serve"]
