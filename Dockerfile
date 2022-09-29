FROM ubuntu:latest

RUN apt-get update && apt-get install -y locales

ENV DEBIAN_FRONTEND=noninteractive

# Locale
RUN sed -i -e \
  's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen \
   && locale-gen

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:ru
ENV LC_LANG ru_RU.UTF-8
ENV LC_ALL ru_RU.UTF-8

# +Timezone (если надо на этапе сборки)
ENV TZ Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Software
RUN yes | unminimize

ARG software="build-essential openssl libssh2-1-dev curl python3 pip nginx vim python3-dev python3-pip libssl-dev \
              libffi-dev libblas3 libc6 liblapack3 netcat \
              wget htop ansible jq nmap packer rsync ssh screen tmux sshpass tldr \
              iperf3 openconnect man-db tree mc cron libncurses5-dev libncursesw5-dev \
              iputils-ping ftp net-tools dnsutils bind9utils telnet cython3 wget2 locate"

RUN set -ex && \
    apt-get update -y && \
    apt-get install -y $software && \
    rm -rf /var/lib/apt/lists/*

RUN set -ex && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
    
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN updatedb

WORKDIR /root
RUN  wget -O - https://raw.githubusercontent.com/kirka1206/dotfiles/main/runme.sh | bash
RUN git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
RUN vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
