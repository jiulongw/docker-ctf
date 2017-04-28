FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
      build-essential \
      git \
      libffi-dev \
      libssl-dev \
      net-tools \
      netcat \
      python-pip \
      python2.7 \
      vim \
      inetutils-ping \
      tcpdump \
      ;

RUN pip install --upgrade pip pwntools

RUN mkdir /root/github && \
      git clone --recursive https://github.com/jiulongw/dotfiles /root/github/dotfiles && \
      /root/github/dotfiles/setup_bash && \
      /root/github/dotfiles/setup_vim

