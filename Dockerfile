# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the application port
EXPOSE 5000

# Start the application
CMD ["node", "app.js"]
