
# ---- Construye la aplicación Express ----
FROM node:18-alpine3.16
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
COPY --from=react-builder /app/dist ./tallergithubactions/dist
EXPOSE 4000
CMD ["node", "sum.js"]
