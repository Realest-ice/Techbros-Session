# Use the lightweight Node.js 20 image (matches your package.json)
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files first to cache dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port (Railway/Heroku/Render will override this, but good for local)
EXPOSE 8000

# Start the bot
CMD ["node", "index.js"]
