return {
  'rmehri01/onenord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.onenord_borders = false
    vim.g.onenord_disable_background = true
    vim.g.onenord_italic = false
    vim.g.onenord_uniform_diff_background = true
    vim.g.onenord_bold = false

    vim.cmd [[colorscheme onenord]]

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.onenord_disable_background = bg_transparent
      vim.cmd [[colorscheme onenord]]
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end,
}
