FROM ubuntu:latest

RUN apt-get update

RUN apt upgrade -y && \
    apt install -y \
    build-essential \
    apt-transport-https \
    wget \
    libiberty-dev \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/distcc/distcc/releases/download/v3.4/distcc-3.4.tar.gz && \
    tar -xvf distcc-3.4.tar.gz

WORKDIR /distcc-3.4

RUN ./configure && \
    make && \
    make install

RUN useradd distcc

EXPOSE 3632

CMD distccd --daemon --listen 0.0.0.0 --allow 0.0.0.0/0 --verbose --log-stderr --enable-tcp-insecure && sleep infinity