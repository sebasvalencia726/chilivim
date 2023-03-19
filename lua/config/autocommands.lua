vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]]
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
-- Automatically close tab/vim when nvim-tree is the last window in the tab
vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd "tabdo wincmd ="
  end,
})

vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
  callback = function()
    vim.cmd "quit"
  end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.java" },
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    local line_count = vim.api.nvim_buf_line_count(0)
    if line_count >= 5000 then
      vim.cmd "IlluminatePauseBuf"
    end
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  -- enable wrap mode for json files only
  command = "setlocal wrap",
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- enable twilight
--     vim.cmd "TwilightEnable"
--   end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "Jenkinsfile",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "groovy")
  end,
})

-- windows to close with "q"
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
    "startuptime",
    "qf",
    "lspinfo",
    "vim",
    "OverseerList",
    "OverseerForm",
    "fugitive",
    "toggleterm",
    "floggraph",
    "git",
    "cheat",
    "Jaq",
  },
  command = "nnoremap <buffer><silent> q :bdelete!<CR>",
})

-- don't auto comment new line
vim.api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- Autoinsert python shebang
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.py",
  command = "exec 'normal i#!/usr/bin/env python3\n'",
})

-- Autoinsert bash shebang
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  command = "exec 'normal i#!/usr/bin/env bash\n'",
})

-- Terraform configuration
vim.cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {
    "*.hcl",
    "*.terraform",
    "terraform.rc",
  },
  command = "set filetype=hcl"
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {
    "*.tf",
    "*.tfvars",
  },
  command = "set filetype=terraform"
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {
    "*.tfstate",
    "*.tfstate.backup",
  },
  command = "set filetype=json"
})

vim.cmd([[let g:terraform_fmt_on_save=1]])
vim.cmd([[let g:terraform_align=1]])
-- End of terraform config.

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  -- command = [[%s/\s\+$//e]],
  command = ":call DeleteEndingWhiteSpace()"
})
