#!/bin/bash

apt update && apt install docker-compose unzip -y
pacman -Syu --noconfirm docker-compose unzip

xhost +

wget https://raw.githubusercontent.com/cosgais/MOAB/main/Dockerfile

wget https://raw.githubusercontent.com/cosgais/MOAB/main/docker-compose.yml
wget https://raw.githubusercontent.com/cosgais/MOAB/main/requirements.txt

wget https://www.dataforth.com/media/softwaredownload/maq20/ApplicationSoftware/MAQ20_API_Python-master.zip

unzip MAQ20_API_Python-master.zip -d .

rm MAQ20_API_Python-master.zip
docker-compose build
docker-compose up
