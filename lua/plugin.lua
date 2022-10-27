local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  use {'https://github.com/tree-sitter/tree-sitter.git'} 
  use {'https://github.com/preservim/nerdtree.git', as = 'nerdtree'}
  use {'https://github.com/lukas-reineke/indent-blankline.nvim.git'}
  use {'https://github.com/rafamadriz/friendly-snippets.git'}
  if packer_bootstrap then
    require('packer').sync()
  end
  --statusline
  use({
  "NTBBloodbath/galaxyline.nvim",
  
  config = function()
    require("galaxyline.themes.eviline")
  end,
  requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })


end)

