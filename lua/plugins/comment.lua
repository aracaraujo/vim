return {
  'numToStr/Comment.nvim',
  event = 'VeryLazy',
  opts = {
    toggler = {
      line = '<C-/>', -- Toggle comment for a single line (default: `gcc`)
      block = '<C-/>', -- Toggle block comment (default: `gbc`)
    },
    opleader = {
      line = '<C-/>', -- Comment in visual mode (default: `gc`)
      block = '<C-/>', -- Block comment in visual mode (default: `gb`)
    },
  },
}
