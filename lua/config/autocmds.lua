-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local custom_format = function()
--   if vim.bo.filetype == "templ" then
--     local bufnr = vim.api.nvim_get_current_buf()
--     local filename = vim.api.nvim_buf_get_name(bufnr)
--     local cmd = "templ fmt " .. vim.fn.shellescape(filename)
--
--     vim.fn.jobstart(cmd, {
--       on_exit = function()
--         if vim.api.nvim_get_current_buf() == bufnr then
--           vim.cmd("e!")
--         end
--       end,
--     })
--   else
--     vim.lsp.buf.format()
--   end
-- end

local templ_format = function()
  local bufnr = vim.api.nvim_get_current_buf()
  local filename = vim.api.nvim_buf_get_name(bufnr)
  local cmd = "templ fmt " .. vim.fn.shellescape(filename)

  vim.fn.jobstart(cmd, {
    on_exit = function()
      if vim.api.nvim_get_current_buf() == bufnr then
        vim.cmd("e!")
      end
    end,
  })
end

vim.api.nvim_create_autocmd({
  "BufWritePre",
}, {
  pattern = { "*.templ" },
  callback = templ_format,
})
