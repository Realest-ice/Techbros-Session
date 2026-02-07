# 1. Use a stable Node.js version
FROM node:20-bullseye-slim

# 2. Set the working directory
WORKDIR /usr/src/app

# 3. Copy package files first (better caching)
COPY package*.json ./

# 4. Install dependencies AND pm2 globally to fix the "pm2 not found" error
RUN npm install
RUN npm install -g pm2

# 5. Copy all your project files
COPY . .

# 6. Expose the port
EXPOSE 8000

# 7. Start the bot using your package.json script
CMD ["npm", "start"]
