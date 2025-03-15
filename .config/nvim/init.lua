-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- load the .env file for providing api key for code-companion plugin
vim.cmd("Dotenv ~/.config/nvim/lua/plugins/.env")
