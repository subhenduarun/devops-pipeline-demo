# Use official Node.js image
FROM node:18

<<<<<<< HEAD
# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
=======
# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
>>>>>>> 426f4107d69d879c455361e452788f397575a365
RUN npm install

# Copy the rest of the app
COPY . .

<<<<<<< HEAD
# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
=======
# Expose port and start the app
EXPOSE 3000
CMD ["npm", "start"]
>>>>>>> 426f4107d69d879c455361e452788f397575a365
