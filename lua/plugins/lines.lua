return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require "cfg.lualine"
    end,
    event = "UiEnter",
    enabled = true,
  },
  {
    "rebelot/heirline.nvim",
    event = "UiEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require "cfg.heirline"
    end,
    enabled = false,
  },
  {
    "utilyre/barbecue.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "SmiteshP/nvim-navic",
    },
    event = "UiEnter",
    opts = { theme = "kanagawa" },
  }
}
