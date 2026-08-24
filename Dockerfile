FROM node:22-alpine

WORKDIR /afSite

COPY package*.json ./

RUN npm ci

COPY . ./

RUN npm run build

EXPOSE 4321

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
