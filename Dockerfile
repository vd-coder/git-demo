FROM node
WORKDIR /usr/src/mapsense
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY models models
COPY Routes Routes
COPY server.js server.js



# Specify the command to run your application
CMD ["npm", "start"]
