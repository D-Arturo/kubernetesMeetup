# Use the latest node version
FROM node:alpine

# Copy the files for the app to run
COPY . /app

# Set the default workdir for the doker image
WORKDIR /app

# Install packages from `package-lock.json` https://docs.npmjs.com/cli/v7/commands/npm-ci
RUN npm install

# Set the starting command
CMD [ "node", "index.js" ]