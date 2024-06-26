!/bin/sh

apt update
apt install git gcc g++ vim wget unzip
git clone https://github.com/github/codeql.git
mv -f codeql codeql-repo
wget https://github.com/github/codeql-cli-binaries/releases/download/v2.17.0/codeql-linux64.zip
unzip codeql-linux64.zip
rm -rf codeql-linux64.zip
mkdir databases
mkdir App
cd App
mkdir c++ python c

CODEQL_PATH="/root/fileguard/Static/codeql"
echo 'export PATH="$PATH:'"$CODEQL_PATH"'"' >> ~/.bashrc
source ~/.bashrc


