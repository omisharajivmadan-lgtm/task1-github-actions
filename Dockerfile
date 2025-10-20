# Stage 1: Build Stage
FROM node:20-slim as build-stage
WORKDIR /app
COPY package*.json .
RUN npm install --production
COPY . .

# Stage 2: Final Production Image
FROM node:20-slim
WORKDIR /app
COPY --from=build-stage /app .
EXPOSE 3000
CMD ["npm", "start"]
