# Use Node.js LTS base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose the app port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

