local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation
  use("szw/vim-maximizer") -- maximizes and restores current window

  
  use("numToStr/Comment.nvim") -- commenting with gc

  
  use("nvim-tree/nvim-tree.lua") -- file explorer

  use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side


  if packer_bootstrap then
    require("packer").sync()
  end
end)
