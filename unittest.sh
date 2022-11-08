#!/bin/bash
docker stop unit-test
docker rm unit-test
docker run --name unit-test \
        -p 8085:80 \
        -v $(pwd)/default.conf:/usr/local/openresty/nginx/conf/nginx.conf:ro \
        -v $(pwd)/scripts:/etc/nginx/lua:ro \
        -v $(pwd)/spec:/etc/nginx/spec:ro \
        -v $(pwd)/utilities:/etc/nginx/utilities \
        -v $(pwd)/log:/var/log/nginx \
        -e env_test=123 \
        --privileged=true \
        -d licycle/lua-resty-busted-test-unit:1.0

docker exec unit-test bash -c "/etc/nginx/utilities/auto-test.sh"