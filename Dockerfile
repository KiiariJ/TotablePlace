#base image
FROM node:14-alpine

#set the working directory inside the container
WORKDIR /usr/src/C:\Users\klewis4\jsProgs\expressbykiari\newapp.js

#Copy package.json and package-lock.json to the working directory
COPY package * .json ./ 

#Install application depedencies
RUN npm install 

#Copy the rest of the application files to the working directory
COPY . . /usr/src/C:\Users\klewis4\jsProgs\expressbykiari\newapp.js/

#Expose the port on which the application listens
EXPOSE 3000

#Start the application
CMD ["node", "newapp.js"]
