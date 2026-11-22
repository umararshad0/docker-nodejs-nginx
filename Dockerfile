FROM node:24-alpine

WORKDIR /app

COPY app/package*.json ./

RUN npm ci --omit=dev

COPY app/app.js .

EXPOSE 3000

CMD ["npm", "start"]
