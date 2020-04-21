FROM node:latest

# Create the directory!
RUN mkdir - p /usr/src/bot
WORKDIR /usr/src/bot

# Copy and Install our BOT
COPY package.json /usr/src/bot
RUN npm install

# Our precious bot
COPY . /usr/src/bot

# Starting the bot
CMD ["node", "index.js"]