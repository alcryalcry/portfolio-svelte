# этап сборки (build stage)
FROM node:16-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN yarn install --network-timeout 100000
COPY . .
RUN yarn build

# этап production (production-stage)
FROM nginx:1.23.1-alpine
COPY --from=build-stage /app/build /usr/share/nginx/html
EXPOSE 80
