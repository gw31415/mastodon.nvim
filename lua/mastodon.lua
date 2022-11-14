-- commands module file
local commands = require("mastodon.commands")

local M = {}
M.config = {
  -- default config
  opt = "Hello!",
}

-- setup is the public method to setup your plugin
M.setup = function(args)
  -- you can define your setup function here. Usually configurations can be merged, accepting outside params and
  -- you can also put some validation here for those.
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

-- "greeting" is a public method for the plugin
M.greeting = function()
  print(commands.greeting())
  print(commands.greeting())
  print(commands.greeting())
  print(commands.greeting())
  print(commands.greeting())
  print(commands.greeting())
end

M.toot_message = function(opts)
  local message = opts.args
  print(commands.toot_message(message))
end

return M
