FROM ubuntu:20.04

RUN apt update && \
    apt install  -y net-tools distcc gcc g++ clang-12 && \
    apt clean
#    echo "#!/bin/bash \n distccd --daemon --no-detach --no-detach --user nobody --allow 0.0.0.0/0 --log-stderr --stats \${OPT}" > ./entrypoint.sh && \
#    chmod +x ./entrypoint.sh

#ENTRYPOINT ["./entrypoint.sh"]

CMD distccd --daemon --no-detach --user nobody --listen 0.0.0.0 --allow 0.0.0.0/0 --verbose --log-stderr --stats --enable-tcp-insecure
