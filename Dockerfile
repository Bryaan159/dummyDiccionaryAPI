FROM node:18
#Create app directory
WORKDIR /app
#Install app dependencies
#A wildcard is used to ensure both package.json and package-lock.json are copied to
#A where available (npm@5+)

COPY package*.json ./

RUN npm install
#If you are building your code
#Run npm ci --only=production
#Bundle app source

COPY . .

EXPOSE 3000

CMD [ "node","bin/www" ]
