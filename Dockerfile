# ---- Build Stage ----
FROM node:20.10.0-alpine AS builder
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

# ---- Release Stage ----
FROM node:20.10.0-alpine
WORKDIR /app
COPY --from=builder /app/.output .
EXPOSE 3000
CMD ["node", "/app/server/index.mjs"]