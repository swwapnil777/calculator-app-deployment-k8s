# Use a specific Node.js version for consistency
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /myapp

# Copy package.json and yarn.lock first to leverage Docker cache
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run your application
CMD ["yarn", "start"]
