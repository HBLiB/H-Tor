#!/bin/bash

sudo brctl addbr ToR
docker network create --attachable --gateway 2.2.2.1 --subnet 5.5.5.0/24 --opt com.docker.network.bridge.name=ToR ToR
