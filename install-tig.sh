#!/bin/bash
git clone https://github.com/jonas/tig.git build/tig
cd build/tig
make
make install prefix=$HOME
make install-doc prefix=$HOME
