-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local function transparent_bg()
  local groups = {
    "Normal",
    "NormalNC",
    "EndOfBuffer",
    "SignColumn",
    "LineNr",
    "FoldColumn",
    "CursorLineNr",
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "StatusLine",
    "StatusLineNC",
    "VertSplit",
    "WinSeparator",
    "TelescopeNormal",
    "TelescopeBorder",
    "TelescopePromptNormal",
    "TelescopePromptBorder",
    "TelescopeResultsNormal",
    "TelescopeResultsBorder",
    "TelescopePreviewNormal",
    "TelescopePreviewBorder",
    "NeoTreeNormal",
    "NeoTreeNormalNC",
    "NeoTreeEndOfBuffer",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = transparent_bg,
})

vim.schedule(function()
  transparent_bg()
end)
