#!/bin/bash

# Perintah untuk membuat docker image bernama dari Dockerfile di directory saat ini
docker build -t fitrarizki/karsajobs-ui:latest .
# Perintah untuk login ke docker hub
docker login -u fitrarizki
# Perintah untuk mengunggah docker image ke docker hub 
docker push fitrarizki/karsajobs-ui:latest