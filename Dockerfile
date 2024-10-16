FROM node:20.17.0-alpine3.20
EXPOSE 3000
COPY /package.json /yarn.lock /app/
WORKDIR /app
RUN yarn install --frozen-lockfile
COPY / /app
WORKDIR /app
CMD [ "yarn", "start"]
