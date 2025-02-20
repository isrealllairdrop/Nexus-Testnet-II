#!/bin/bash

# Perbarui dan pasang paket yang diperlukan
sudo apt update
sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler unzip

# Instalasi Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup target add riscv32i-unknown-none-elf

# Unduh dan pasang Protobuf Compiler
wget https://github.com/protocolbuffers/protobuf/releases/download/v21.3/protoc-21.3-linux-x86_64.zip
unzip protoc-21.3-linux-x86_64.zip -d /usr/local

# Konfigurasi swap memory
sudo swapoff -a  
sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sysctl -w vm.overcommit_memory=1
echo 'vm.overcommit_memory=1' | sudo tee -a /etc/sysctl.conf

