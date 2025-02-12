return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    lsp = {
      progress = {
        enabled = true, -- Enable Noice for LSP progress messages
        view = 'mini', -- Show in Noice's floating mini window
      },
      message = {
        enabled = true, -- Route general LSP messages into Noice
        view = 'notify', -- Show in Noice notifications
      },
      hover = {
        enabled = false, -- Avoid LSP hover messages interfering
      },
      signature = {
        enabled = false, -- Avoid LSP signature help popping unexpectedly
      },
    },
    routes = {
      -- Redirect "Loading workspace" messages
      {
        filter = {
          event = 'lsp',
          find = 'Loading workspace',
        },
        view = 'notify',
      },
      -- Redirect "Diagnostics workspace" messages
      {
        filter = {
          event = 'lsp',
          find = 'workspace',
        },
        view = 'mini',
      },
    },
  },
  ependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },

  config = function()
    require('noice').setup {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    }
  end,
}
