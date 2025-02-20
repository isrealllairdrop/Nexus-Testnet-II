# Nexus Testnet II CLI Stable

- Buy VPS di : [t.me/skuycloud](t.me/skuycloud)
- Trakteer buat buy Kopi : https://trakteer.id/brrrskuy/tip `<---`

# Install Build Essential
```
sudo apt install build-essential pkg-config libssl-dev git-all -y
```
# Install Protobuf Compiler
```
sudo apt install -y protobuf-compiler
```
# Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
# Add the `riscv32i` target
```
rustup target add riscv32i-unknown-none-elf
```
# Install Unzip
```
apt install unzip
```
# Install Protoc v21.3
```
wget https://github.com/protocolbuffers/protobuf/releases/download/v21.3/protoc-21.3-linux-x86_64.zip
```
# Extract File Protoc Zip
```
unzip protoc-21.3-linux-x86_64.zip -d /usr/local
```
```
source $HOME/.cargo/env
```
# Add Overswap 16GB 
`run one per line`
```
sudo swapoff -a  
```
```
sudo fallocate -l 16G /swapfile
```
```
sudo chmod 600 /swapfile
```
```
sudo mkswap /swapfile
```
```
sudo swapon /swapfile
```
# Add Overcommit Memory
```
sudo sysctl -w vm.overcommit_memory=1
```
`add permanent overcommit`
```
echo 'vm.overcommit_memory=1' | sudo tee -a /etc/sysctl.conf
```
# Add Screen
```
screen -S nexus
```
# Run Script 
```
curl https://cli.nexus.xyz/ | sh
```
