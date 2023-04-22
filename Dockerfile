# ---- Construye la aplicación React ----
FROM node:19-alpine3.16 AS react-builder
WORKDIR /app
COPY ./tallergithubactions/package*.json ./
RUN npm ci
COPY ./tallergithubactions ./
RUN npm run build

# ---- Construye la aplicación Express ----
FROM node:19-alpine3.16
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
COPY --from=react-builder /app/dist ./tallergithubactions/dist
EXPOSE 4000
CMD ["node", "sum.js"]
