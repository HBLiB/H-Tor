#!/bin/bash


sudo apt install -y bridge-utils  docker.io docker-compose
sudo brctl addbr ToR
sudo docker network create --attachable --gateway 2.2.2.254 --subnet 2.2.2.0/24 --opt com.docker.network.bridge.name=ToR ToR
cd Docker
sudo docker-compose build
sudo docker-compose up -d
