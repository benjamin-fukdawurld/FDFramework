#!/bin/bash

set -e

# This project will install the project dependencies

# Update the system
sudo apt-get update -y

# Install git & git-lfs
sudo apt-get install -y git git-lfs

# Install g++ & cmake
sudo apt-get install -y build-essential g++ cmake

# Install clang 12
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 12
rm llvm.sh
sudo apt-get install -y clang-format

mkdir -p tools

STARUML_PATH="tools/staruml"
if [ ! -f "$STARUML_PATH" ]; then
    STARUML_URL="http://staruml.io/download/releases/StarUML-3.2.2.AppImage"
    wget --output-document="$STARUML_PATH" $STARUML_URL
    chmod +x "$STARUML_PATH"
fi

git submodule update --init --recursive
mkdir -p thirdparty/build
mkdir -p thirdparty/install
oldpwd=$(pwd)
cd thirdparty/build
mkdir googletest
cd googletest
cmake -DCMAKE_INSTALL_PREFIX ../../googletest
cmake --build . --parallel $(nproc)
cmake --install .

cd $oldpwd
cd thirdparty/boost
./bootstrap.sh --prefix=../install
./b2 install