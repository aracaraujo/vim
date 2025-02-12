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
      dashboard.button('1', ' Nvim config', ':cd ~/.config/nvim/ | Telescope find_files<CR>'),
      dashboard.button('2', ' ShrEDITApp', ':cd ~/ShreditPlatform/ShrEDITApp/ | Telescope find_files<CR>'),
      dashboard.button('3', ' Shred Editor', ':cd ~/ShreditPlatform/shred-editor/ | Telescope find_files<CR>'),
      dashboard.button('4', ' Shred Admin', ':cd ~/ShreditPlatform/shred-admin/ | Telescope find_files<CR>'),
      dashboard.button('5', ' Shred Web App', ':cd ~/ShreditPlatform/shred-web-app/ | Telescope find_files<CR>'),
      dashboard.button('6', ' Shred Api Client', ':cd ~/ShreditPlatform/shred-api-client/ | Telescope find_files<CR>'),
      dashboard.button('7', ' Projec API', ':cd ~/ShreditPlatform/project-api/ | Telescope find_files<CR>'),
      dashboard.button('8', ' Homly Mobile', ':cd ~/Homly/homly_mobile/ | Telescope find_files<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    -- Apply the updated options
    alpha.setup(dashboard.opts)
  end,
}
