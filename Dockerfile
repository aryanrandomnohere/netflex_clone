FROM node:18-alpine

# Install serve globally
RUN npm install -g serve

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Expose port 80
EXPOSE 80

# Start the server
CMD ["serve", "-s", ".", "-l", "80"]