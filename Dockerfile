FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

#s 
RUN rm -f .env

EXPOSE 8080

CMD ["node", "server/index.js"]
