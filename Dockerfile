FROM node:18

# Create app directory
WORKDIR /usr/scr/app

# Install app dependencies
COPY package.*json ./

RUN npm set strict-ssl false
RUN npm install 

COPY . . 

EXPOSE 3000

CMD [ "node", "index.js"]