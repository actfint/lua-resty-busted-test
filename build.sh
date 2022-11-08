#!/bin/bash
version="1.0"

echo "=================build base docker=================="
docker build -t licycle/lua-resty-busted-test-base:$version -f dockerbuild/base/Dockerfile.openresty-base .
docker push licycle/lua-resty-busted-test-base:$version

echo "=================build unit test docker=================="
docker build -t licycle/lua-resty-busted-test-unit:$version -f dockerbuild/base/Dockerfile.openresty-unit-test .
docker push licycle/lua-resty-busted-test-unit:$version

echo "=================[all finish]=================="
