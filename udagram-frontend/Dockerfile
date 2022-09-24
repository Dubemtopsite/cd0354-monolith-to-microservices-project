FROM node:12-alpine as build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g ionic
RUN npm install --force
COPY . .
RUN ionic build
## Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
COPY --from=build  /usr/src/app/www /usr/share/nginx/html