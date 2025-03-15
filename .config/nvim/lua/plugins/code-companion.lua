return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      openai = function()
        return require("codecompanion.adapters").extend("openai", {
          env = {
            api_key = os.getenv("OPENAI_API_KEY"), -- Use environment variable
          },
        })
      end,
    },
    strategies = { -- Moved outside `adapters`
      chat = {
        adapter = "openai",
      },
      inline = {
        adapter = "openai",
      },
    },
  },
}
