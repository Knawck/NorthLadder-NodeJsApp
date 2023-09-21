FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV MONGODB_URI=mongodb://mongodb-hostname:27017/new_DB
ENV REDIS_HOST=redis-host
ENV REDIS_PORT=6379
EXPOSE 3000
CMD ["node", "app.js"]
