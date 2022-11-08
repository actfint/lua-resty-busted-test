#!/usr/bin/env bash
#docker pull openresty/openresty:1.21.4.1-1-alpine-fat

version="1.0"
docker pull licycle/lua-resty-busted-test-base:$version
docker pull licycle/lua-resty-busted-test-unit:$version