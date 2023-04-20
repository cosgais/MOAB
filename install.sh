#!/bin/bash

apt update && apt install docker-compose unzip xorg-xhost -y
pacman -Syu --noconfirm docker-compose docker unzip xorg-xhost

xhost +SI:localuser:root

wget https://raw.githubusercontent.com/cosgais/MOAB/main/Dockerfile

wget https://raw.githubusercontent.com/cosgais/MOAB/main/docker-compose.yml
wget https://raw.githubusercontent.com/cosgais/MOAB/main/requirements.txt

wget https://www.dataforth.com/media/softwaredownload/maq20/ApplicationSoftware/MAQ20_API_Python-master.zip

unzip MAQ20_API_Python-master.zip -d .

rm MAQ20_API_Python-master.zip
