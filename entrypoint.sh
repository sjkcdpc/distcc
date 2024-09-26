#!/bin/bash
# --listen 监听的IP地址
# --allow 可以访问的来源IP范围

distccd --daemon --no-detach --user nobody --listen 0.0.0.0 --allow 0.0.0.0/0 --verbose --log-stderr --stats --enable-tcp-insecure --jobs 24