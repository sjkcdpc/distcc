#!/bin/bash

distccd --daemon --no-detach --user nobody --listen 0.0.0.0 --allow 0.0.0.0/0 --verbose --log-stderr --stats --enable-tcp-insecure