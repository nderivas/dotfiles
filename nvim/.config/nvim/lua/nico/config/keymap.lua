local k = vim.keymap

-- Indentation
k.set('v', '<', '<gv')
k.set('v', '>', '>gv')
k.set('n', '<', '<<')
k.set('n', '>', '>>')

-- Moving lines in visual mode
k.set('v', 'K', ":m '<-2<CR>gv=gv")
k.set('v', 'J', ":m '>+1<CR>gv=gv")

-- Diagnostics
k.set('n', '<leader>d', function() vim.diagnostic.open_float() end)

-- Copy to "a" register (alternative)
k.set('n', '<leader>add', '"add')
k.set({ 'v', 'n' }, '<leader>ad', '"ad')
k.set('n', '<leader>ayy', '"ayy')
k.set({ 'v', 'n' }, '<leader>ay', '"ay')

-- Paste from "a" register
k.set('n', '<leader>ap', '"ap')

-- Splits
k.set('n', '<leader>%', ':vsplit<CR>')
k.set('n', '<leader>"', ':split<CR>')
