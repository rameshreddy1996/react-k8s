FROM node:alpine

# # Declaring env
# ENV NODE_ENV development

# Setting up the work directory
WORKDIR /app

# Installing dependencies
COPY package.json .
RUN npm install
# Copying all the files in our project
COPY . .
RUN yarn install
# RUN yarn run test
EXPOSE 3000

 

# Starting our application
CMD yarn start
