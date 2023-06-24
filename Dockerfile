# Menggunakan image node dengan tag (versi) 14 sebagai base image
FROM node:14
# Menentukan /app sebagai working directory (mkdir app -> cd app)
WORKDIR /app
# Menyalin semua berkas di directory active saat ini (a433-microservices -> proyek-pertama)
# ke working directory (/app) di dalam container
COPY . .
# Menentukan agar aplikasi berjalan dalam production mode
# dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build
# Menentukan port 8080 sebagai port yg digunakan oleh aplikasi 
EXPOSE 8080
# Menjalankan aplikasi
CMD [ "npm", "start" ]