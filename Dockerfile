FROM node:14

#create app directory
WORKDIR /amir/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
CMD [ "node", "dist/main" ]