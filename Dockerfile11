FROM nvidia/cuda:11.7.1-devel-ubuntu22.04
# python3.10-ubuntu22.04

# Set bash as the default shell
ENV SHELL=/bin/bash
ENV TZ=Asia/Shanghai
ENV LD_LIBRARY_PATH=/usr/local/cuda/lib64
ARG DEBIAN_FRONTEND=noninteractive

# Create a working directory
WORKDIR /workspace/

# Build with some basic utilities 
RUN apt update && apt install -y \
    python3-pip \
    apt-utils \
    vim \
    git \
    wget \
    curl
    
# RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
# RUN bash nodesource_setup.sh
# RUN apt install -y nodejs
    

# alias python='python3'
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install \
    numpy \
    torch \
    transformers \
    datasets \
    evaluate \
    accelerate \
    diffusers \
    jupyterlab \
    jupyterlab-language-pack-zh-CN \
    jupyterlab-git \
    jupyter-resource-usage \
    jupyterlab-search-replace \
    jupyterlab-code-formatter \
    jupyterlab-miami-nights \
    jupyterlab-miami-nights \
    black \
    isort
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--allow-root", "--no-browser"]
EXPOSE 8080
