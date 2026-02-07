FROM node:18-bullseye-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --omit=optional && npm cache clean --force

COPY . .

EXPOSE 8000

CMD ["node", "index.js"]
