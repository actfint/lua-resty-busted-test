#!/bin/bash
docker run --name proxy-test \
        -p 8086:80 \
        -v $(pwd)/default.conf:/usr/local/openresty/nginx/conf/nginx.conf:ro \
        -v $(pwd)/scripts:/etc/nginx/lua:ro \
        -v $(pwd)/log:/var/log/nginx \
        -d licycle/lua-resty-busted-test-base:1.0
