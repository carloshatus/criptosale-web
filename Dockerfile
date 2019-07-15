FROM node:latest
LABEL maintainer=${MAINTAINER}
WORKDIR /app
COPY . /app
EXPOSE ${WEB_PORT}
RUN npm install http-server -g
RUN npm install && npm run build
CMD http-server ./dist
