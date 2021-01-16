FROM arm32v7/node:alpine
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
