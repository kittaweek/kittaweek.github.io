FROM node:22.23.4-alpine AS builder
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
RUN yarn build

FROM nginx:1.27.0-alpine AS server
COPY --from=builder /app/site/.vitepress/dist /usr/share/nginx/html
EXPOSE 80
