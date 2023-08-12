local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
  git = {
    clone_timeout = 300,
  },
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- colourscheme
  use {
    'mrjones2014/lighthaus.nvim',
    config = function() require('lighthaus').setup({
      bg_dark = true, 
      lsp_underline_style = 'underline'
    }) end
  }

  -- icons
  use {
    'nvim-tree/nvim-web-devicons',
    config = function() require('nvim-web-devicons').setup {} end
  }

  -- line
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('lualine').setup({
      options = {
        theme = '16color'
      }
    }) end
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    config = function() require('nvim-treesitter.configs').setup {
      highlight = { enable = true }
    } end
  }

  -- file explorer
  use {
    'ms-jpq/chadtree',
    branch = 'chad',
    run = 'python3 -m chadtree deps',
  }

  -- Better navigation with s and S
  use { 
    'ggandor/leap.nvim',
    config = function() require('leap').add_default_mappings() end
  }

  -- Common dependency
  use "nvim-lua/plenary.nvim"

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
