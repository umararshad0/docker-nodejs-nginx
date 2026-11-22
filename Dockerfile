FROM node:26-alpine

WORKDIR /app

COPY app/package*.json ./

RUN npm ci --omit=dev

COPY app/app.js .

EXPOSE 3000

CMD ["npm", "start"]
