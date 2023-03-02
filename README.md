# Jupyter Notebook with Pytorch
git config --global user.name "heyi"
git config --global user.email "805407646@qq.com"


docker run -idt --restart=always  \
  --cap-add=SYS_PTRACE \
  --env JUPYTER_TOKEN="123456" \
  --env OMP_NUM_THREADS="20" \
  --env NPM_CONFIG_CACHE=/root/.cache/npm \
  --name="mlwb" \
  -v /data1/workspace:/workspace \
  -v /data1/cache:/root/.cache \
  -p 8888:8080 \
  -p 88:80 \
  --gpus all  --cpus=20  --shm-size=60G \
  --log-opt mode=non-blocking --log-opt max-buffer-size=4m \
  timemaker/pytorch-notebook:latest
