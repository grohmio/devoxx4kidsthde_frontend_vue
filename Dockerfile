FROM node:11.1.0-alpine as build-stage
WORKDIR /app
COPY vue_app/package*.json ./
RUN npm install
COPY vue_app .
RUN npm run build

FROM nginx:1.15-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
