return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- for default capabilities
      "rmagatti/goto-preview", -- setup in cfg.lsp
      "folke/neodev.nvim",     -- setup in cfg.lsp
      "b0o/SchemaStore.nvim",  -- for jsonls
    },
    config = function()
      require "cfg.lsp"
    end,
  },
  {
    "weilbith/nvim-code-action-menu", -- ui for lsp code actions
    cmd = 'CodeActionMenu'
  },
  {
    "j-hui/fidget.nvim", -- ui for lsp progress
    config = true
  },
  {
    "smjonas/inc-rename.nvim", -- command preview for lsp rename
    config = true,
    cmd = "IncRename",
  },
  {
    "jose-elias-alvarez/null-ls.nvim", -- use linters as lsps
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require "cfg.null-ls"
    end,
  },
  {
    "MrcJkb/haskell-tools.nvim", -- haskell lsp extensions
    dependencies = {
      "nvim-lspconfig",
      "toggleterm.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require "cfg.hls"
    end,
    ft = { "haskell", "lhaskell" },
  },
  {
    "p00f/clangd_extensions.nvim", -- clangd lsp extensions
    dependencies = "nvim-lspconfig",
    config = function()
      require "cfg.clangd"
    end,
    ft = { "c", "cpp", "objc", "objcpp", "cuda" },
  },
  {
    "kosayoda/nvim-lightbulb", -- signcolumn support for lsp code actions
    dependencies = "antoinemadec/FixCursorHold.nvim",
    config = function()
      require("nvim-lightbulb").setup { autocmd = { enabled = true } }
      vim.fn.sign_define("LightBulbSign", { text = "" })
    end,
    event = 'BufWinEnter'
  },
}
