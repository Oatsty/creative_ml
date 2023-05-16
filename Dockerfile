 FROM nvidia/cuda:11.0.3-devel-ubuntu20.04
 ARG DEBIAN_FRONTEND=noninteractive
 RUN apt-get update -y
 RUN apt-get update && apt-get install -y sudo git wget tmux htop emacs ssh curl zip unzip libcairo2-dev libpango1.0-dev libsndfile-dev
 
 WORKDIR /home
 
 # 環境設定
 RUN echo 'export PATH="/home/parinayok/.local/bin:${PATH}"' >> ~/.bashrc
 RUN echo 'export OMP_NUM_THREADS=4' >> ~/.bashrc
 RUN git config --global user.email "parinayoksatayu@gmail.com"
 RUN git config --global user.name "oatsty"
 RUN echo 'set-option -g default-shell /bin/bash' >> ~/.tmux.conf