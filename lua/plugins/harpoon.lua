return {
  'nvim-lua/plenary.nvim', -- Required dependency for Harpoon
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon').setup {
        mark_cb = function(mark_info) -- Optional: Customize how marks are displayed
          local filename = vim.fn.fnamemodify(mark_info.file, ':t')
          return string.format('[%d] %s:%d', mark_info.id, filename, mark_info.line)
        end,
        -- Keybindings (important to set these!)
        -- Example using <leader>m to mark and <leader>1- to jump:
        -- Make sure to replace <leader> with your actual leader key
        -- (usually space or \)
        keymaps = {
          ['<leader>m'] = function()
            require('harpoon').mark_file()
          end,
          ['<leader>1'] = function()
            require('harpoon').goto_mark(1)
          end,
          ['<leader>2'] = function()
            require('harpoon').goto_mark(2)
          end,
          ['<leader>3'] = function()
            require('harpoon').goto_mark(3)
          end,
          ['<leader>4'] = function()
            require('harpoon').goto_mark(4)
          end,
          -- Optional: Use a different key to toggle the Harpoon window
          -- ["<leader>a"] = function() require("harpoon").toggle_quick_menu() end,
        },
        -- Tabs and buffers switching behavior
        tab_behavior = 1, -- 1: Switch to the tab where the file was marked
        -- 2: Stay in the current tab
        -- 3: Open the file in a new tab
        tmux_autofix = false, -- If you use tmux, this might help with issues
      }
    end,
  },
}
