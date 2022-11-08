-- spec/sample_spec.lua

rawset(_G, 'lfs', false) -- lfs warning fix!
require 'busted.runner'({ standalone = true })

local H = require("helloworld")

describe("request test", function()
    it("should pass", function()
        assert.is_true(H:hello_value()==3)
        assert.is_true(H:test_env()=="123")
    end)
    it("should not pass", function()
        assert.is_true(H:test_env()=="1243")
    end)
end)

-- normal code test
--local af_common = require('af_common')
--af_common.log()
--local data = {["a"] = "a", ["b"] = "b", [1] = 1, [2] = 2, ["t"] = {1, 2, 3}}
--af_common.log(data)
