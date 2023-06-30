FROM node:18-alpine
WORKDIR /app
COPY . .
ENV PORT=3001
ENV AMQP_URL="amqp://localhost:5672"
RUN npm ci
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh 
RUN npm install
EXPOSE 3001
CMD ["node", "index.js"]