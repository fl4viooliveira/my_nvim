require("fl4vio.remap")
require("fl4vio.set")
require("fl4vio.packer")

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has "macunix"

if is_mac then
    require('macos')
end
