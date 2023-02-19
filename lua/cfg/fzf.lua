local fzf = require("fzf-lua")

fzf.setup { winopts = { fullscreen = true } }

-- fzf keymaps
nmap("<leader>f",  fzf.files)
nmap("<leader>ff", fzf.live_grep)
nmap("<leader>fb", fzf.buffers)
nmap("<leader>fg", fzf.git_files)
nmap("<leader>fm", fzf.marks)
nmap("<leader>fR", fzf.registers)

nmap("<leader>fd", fzf.lsp_definitions)
nmap("<leader>fD", fzf.lsp_declarations)
nmap("<leader>fr", fzf.lsp_references)
nmap("<leader>fs", fzf.lsp_document_symbols)
nmap("<leader>fS", fzf.lsp_workspace_symbols)
nmap("<leader>fi", fzf.lsp_implementations)

-- command aliases
vim.cmd [[cnoreabbrev FZF FzfLua]]