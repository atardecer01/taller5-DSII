# ---- Construye la aplicación React ----
FROM node:18
WORKDIR /tallergithubactions
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "echo", "funciona" ]
