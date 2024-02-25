#! /bin/bash

cd ./lib/pg/nsg
rm -rf build
mkdir build 
cd build 
cmake .. 
make
cd ../..
make
python wrapper.py
cd ../..
python sift1m.py --dataset_name sift --data_path ../ann/efanna_graph/data --M 32
