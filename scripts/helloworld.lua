---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by licycle.
--- DateTime: 2022/8/30 下午7:02
---
---
local af_common = require("af_common")
local redis = require "resty.redis"
local cjson = require("cjson");

local H = {}
function H:hello_world()
    local h1 = 1
    local h2 = "2"
    H:hello_world2(h1, h2)
end

function H:hello_value()
    return 3
end

function H:test_env()
    return af_common:get_env("env_test")
end

function H:hello_world2(h1, h2)
    af_common.log(h1)
    af_common.log(h2)
end

return H