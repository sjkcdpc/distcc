FROM ubuntu:22.04

RUN apt update && \
    apt install -y net-tools distcc ccache gcc g++ clang-12 && \
    apt clean

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
