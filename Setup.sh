#!/bin/bash


sudo apt install bridge-utils  docker.io docker-compose
sudo brctl addbr ToR
docker network create --attachable --gateway 2.2.2.1 --subnet 2.2.2.0/24 --opt com.docker.network.bridge.name=ToR ToR
