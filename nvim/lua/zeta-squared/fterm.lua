local fterm = require('FTerm')

local term1 = fterm:new({
    cmd = 'bash',
    dimensions = {
        height = 0.98,
        width = 0.98,
        x = 0.5,
        y = 0.2,
    },
})

local term2 = fterm:new({
    cmd = 'bash',
    dimensions = {
        height = 0.98,
        width = 0.98,
        x = 0.5,
        y = 0.2,
    },
})

local term3 = fterm:new({
    ft = 'fterm_lazygit',
    cmd = 'lazygit',
    dimensions = {
        height = 0.98,
        width = 0.98,
        x = 0.5,
        y = 0.2,
    },
})

function _term1_toggle()
    term1:toggle()
end

function _term2_toggle()
    term2:toggle()
end

function _term3_toggle()
    term3:toggle()
end

vim.keymap.set({'n', 't'}, '<C-]>', '<cmd>lua _term1_toggle()<CR>')
vim.keymap.set({'n', 't'}, '<C-\\>', '<cmd>lua _term2_toggle()<CR>')
vim.keymap.set({'n', 't'}, '<A-\\>', '<cmd>lua _term3_toggle()<CR>')
