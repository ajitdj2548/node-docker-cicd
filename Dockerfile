# Step 1: Use an official Node.js image as base
FROM node:18-alpine

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy package.json & package-lock.json first (for caching)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy rest of the app files
COPY . .

# Step 6: Expose the app port
EXPOSE 3000

# Step 7: Command to start the app
CMD ["npm", "start"]
