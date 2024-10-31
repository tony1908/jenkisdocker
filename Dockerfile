# Dockerfile
FROM node:22.11.0-alpine3.20

WORKDIR /app

COPY . .

CMD ["node", "index.js"]