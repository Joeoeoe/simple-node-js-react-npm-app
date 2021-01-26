FROM node:lts-alpine as build
WORKDIR /app
COPY ["package.json", "package-lock.json", "./"]
RUN npm install
COPY . .
RUN npm run build

FROM alpine:latest
WORKDIR /app
RUN mkdir code
RUN mkdir share
COPY --from=build /app/dist /app/code
ENTRYPOINT cp -r /app/code/* /app/share
# volume 应挂载到/app/share
