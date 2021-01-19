FROM node:alpine

WORKDIR /app
COPY . ./

ENV PATH ./node_modules/.bin:$PATH

RUN npm install

RUN chown -R node:node ./
USER node

EXPOSE 443

CMD [ "npm", "run", "dev"]
