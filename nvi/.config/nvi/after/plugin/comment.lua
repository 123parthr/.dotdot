-- Enable Comment.nvim
require('Comment').setup({
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gl',
        ---Block-comment keymap
        block = 'gf',
    },
})

