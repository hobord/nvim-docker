local config = {}

config.setup = function()
  require("FTerm").setup({
    dimensions = {
      height = 0.9,
      width = 0.9,
      border = 'single'
    }
  })
end

return config
