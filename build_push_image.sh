# Perintah untuk membuat docker image bernama item-app dengan tag v1 dari Dockerfile di directory saat ini
docker build -t item-app:v1 .
# Perintah untuk menampilkan semua docker image yang tersedia 
docker images
# Perintah untuk membuat docker image baru dari docker image yang sudah ada
docker tag item-app:v1 fitrarizki/item-app:v1
# Perintah untuk login ke docker hub
docker login -u fitrarizki
# Perintah untuk mengunggah docker image ke docker hub 
docker push fitrarizki/item-app:v1