return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Custom header
    dashboard.section.header.val = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
    }

    -- Custom buttons for project shortcuts
    dashboard.section.buttons.val = {
      dashboard.button('1', ' ShrEDITApp', ':cd ~/ShreditPlatform/ShrEDITApp/ | Telescope find_files<CR>'),
      dashboard.button('2', ' Shred Editor', ':cd ~/ShreditPlatform/shred-editor/ | Telescope find_files<CR>'),
      dashboard.button('3', ' Shred Admin', ':cd ~/ShreditPlatform/shred-admin/ | Telescope find_files<CR>'),
      dashboard.button('4', ' Shred Web App', ':cd ~/ShreditPlatform/shred-web-app/ | Telescope find_files<CR>'),
      dashboard.button('5', ' Nvim config', ':cd ~/.config/nvim/ | Telescope find_files<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    -- Apply the updated options
    alpha.setup(dashboard.opts)
  end,
}
