FROM node:latest
WORKDIR /nodejsapp
COPY backend-nodejs/ /nodejsapp
EXPOSE 3000
CMD ["node","index.js"]