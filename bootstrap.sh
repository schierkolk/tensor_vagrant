#!/usr/bin/env bash

# add cuda first
#wget -O /tmp/cuda-repo-ubuntu1410_7.0-28_amd64.deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1410/x86_64/cuda-repo-ubuntu1410_7.0-28_amd64.deb
#dpkg -i /tmp/cuda-repo-ubuntu1410_7.0-28_amd64.deb 

#apt-get update
#apt-get install -y cuda-7-0 cuda-toolkit-7-0
#apt-get install -y bc libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev
#apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler  expect-dev
#apt-get install -y build-essential g++ cmake

#apt-get install -y git

#if [ \! -e $HOME/miniconda ]
# then
  echo 'export PATH=$HOME/miniconda/bin:$PATH' > /etc/profile.d/conda.sh
  # wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    # /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda && \
    # rm Miniconda3-latest-Linux-x86_64.sh
#fi

# export PATH=$HOME/miniconda/bin:$PATH
# #conda create -y -n tensorflow python=3.5
# #conda create -y -n tensorflow_ngpu python=3.4
# source activate tensorflow_ngpu
# export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc0-cp34-cp34m-linux_x86_64.whl
# pip install --ignore-installed --upgrade $TF_BINARY_URL