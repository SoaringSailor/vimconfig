local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = { "gitcommit", "gitrebase", "gitconfig" },
  callback = function()
    vim.opt_local.bufhidden = "delete"
  end,
})
