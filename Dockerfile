FROM ubuntu:22.04

RUN apt update && \
    apt install -y net-tools distcc ccache gcc g++ clang-12 && \
    apt clean

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

HEALTHCHECK --interval=5m --timeout=15s CMD curl -f http://127.0.0.1:3633/ || exit 1

EXPOSE 3632/tcp 3633/tcp

ENTRYPOINT ["./entrypoint.sh"]
