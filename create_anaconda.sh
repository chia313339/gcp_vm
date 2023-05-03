#!/bin/bash

# 下載 Anaconda 安裝包
wget https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh -O ~/anaconda.sh

# 安裝 Anaconda
bash ~/anaconda.sh -b -p ~/anaconda
rm ~/anaconda.sh

# 設定環境變數
echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# 建立名為ML的Python 3.8虛擬環境
conda create -n ML python=3.9
