## Introduce
Openresty is based on lua-jit but it is hard to find a proper unit-test tool when we need to test the lua module.
So this repo use docker to build an environment to test lua scripts easily.
We use busted as the base unit-test framework, and the it can use api post to test the lua scripts as usual.


## docker pull
To pull docker needed 
```
bash pull.sh
```

## Project File
```
.
├── README.md
├── build.sh
├── default.conf
├── dockerbuild
│   └── base
│       ├── Dockerfile.openresty-base
│       ├── Dockerfile.openresty-unit-test
│       └── luarocks-3.9.1.tar.gz
├── log
│   ├── access.log
│   └── error.log
├── pull.sh
├── reload.sh
├── restart.sh
├── scripts
│   ├── af_common.lua
│   └── helloworld.lua
├── spec
│   └── helloworld_spec.lua
├── start.sh
├── stop.sh
├── stop_unittest.sh
├── unittest.sh
└── utilities
    └── auto-test.sh
```

# openresty docker unit test
【busted】
```angular2html
sh unittest.sh
```
screen log busted-unit test result


# local installed lua -busted test
```
sudo apt install luarocks 
luarocks install busted
luarocks install luacov
```
You should install the dependency package yourself.

All the unit-test scripts should be in spec dir, end with *_spec.lua.
If you want to change configuration path, change it in .busted.
```
busted
```

## Quick Start

    bash start.sh

## Stop docker

    bash stop.sh

## Restart docker

    bash restart.sh

## 【debug】hot reload nginx 
    bash reload.sh

## 【Tutorial】local debug lua
Refer to the official documentation and install the lua environment on IDEs such as pycharm.
https://github.com/luarocks/luarocks/wiki/Installation-instructions-for-Unix

