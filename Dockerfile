FROM distcc/clang-3.8

RUN useradd distcc

EXPOSE 3632

CMD distccd --daemon --listen 0.0.0.0 --allow 0.0.0.0/0 --verbose --log-stderr --enable-tcp-insecure && sleep infinity