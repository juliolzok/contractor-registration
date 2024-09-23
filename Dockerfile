FROM node:20
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 1337
COPY .env .
ENV NODE_ENV=production
RUN npm run build
CMD ["npm", "start"]
