#!/bin/bash

apt install -y gcc make libglpk-dev

# Step 1: Download the file from the URL to /tmp
wget -P /tmp https://ftp.gnu.org/gnu/glpk/glpk-5.0.tar.gz

# Step 2: Untar the downloaded archive and move it to ./glpk
mkdir ./glpk
tar -xzf /tmp/glpk-5.0.tar.gz -C ./glpk --strip-components=1

# Step 3: Navigate to ./glpk and run configure, make, and make install
cd ./glpk || exit
./configure || exit
make || exit
make check || exit
sudo make install || exit