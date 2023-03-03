FROM nvidia/cuda:11.7.1-base-ubuntu22.04

# Set bash as the default shell
ENV SHELL=/bin/bash

# Create a working directory
WORKDIR /workspace/

# Build with some basic utilities
RUN apt update && apt install -y \
    python3-pip \
    apt-utils \
    vim \
    git \
    nodejs \
    npm

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install \
    numpy \
    torch \
    jupyterlab \
    jupyterlab-language-pack-zh-CN \
    jupyterlab-git \
    jupyter-resource-usage \
    transformers \
    datasets \
    evaluate \
    jupyterlab-search-replace \
    accelerate

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--no-browser"]
EXPOSE 8080
