local handle = io.popen("which python")
local output = handle:read('*a')
local format = output:gsub('[\n\r]', '')
handle:close()
vim.g.python3_host_prog = format
