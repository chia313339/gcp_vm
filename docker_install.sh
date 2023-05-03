#!/bin/bash

# 更新系統
sudo apt-get update
sudo apt-get upgrade

# 安裝 Docker.io
sudo apt-get install -y docker.io

# 安裝 Docker-compose
sudo apt-get install -y docker-compose

# 將當前使用者加入docker群組
sudo usermod -aG docker $USER
