#!/usr/bin/env bash

if [ \! -e $HOME/miniconda ]
then
  echo 'export PATH=$HOME/miniconda/bin:$PATH' > /etc/profile.d/conda.sh
  wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    /bin/bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda && \
    rm Miniconda3-latest-Linux-x86_64.sh
fi

export PATH=$HOME/miniconda/bin:$PATH
conda create -y -n tensorflow python=3.4
#conda create -y -n tensorflow_ngpu python=3.4
source activate tensorflow
conda install gdal
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc0-cp34-cp34m-linux_x86_64.whl
pip install --ignore-installed --upgrade $TF_BINARY_URL

if [ \! -e $HOME/tensorflow ]
 then
  git clone https://github.com/tensorflow/tensorflow.git
fi

