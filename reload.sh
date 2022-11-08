#!/bin/bash
docker exec -it proxy-test sh \
            -c "nginx -t && nginx -s reload"
