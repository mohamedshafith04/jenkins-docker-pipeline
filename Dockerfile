# Use Node.js base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy files from current folder to container
COPY package*.json ./
RUN npm install --only=production

COPY . .

# Run app
CMD ["node", "app.js"]
