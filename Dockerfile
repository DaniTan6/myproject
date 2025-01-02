FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
WORKDIR /app
RUN chmod 777 /app
USER app
COPY package*.json ./
RUN npm install
COPY . .
ENV API_URL=https://myapi.api.com/
EXPOSE 3000
CMD [ "npm" , "start" ]