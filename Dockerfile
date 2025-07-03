FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN ls -l && cat package.json && npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

