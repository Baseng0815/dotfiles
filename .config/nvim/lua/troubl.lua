local trouble = require('trouble')

vim.keymap.set('n', '<C-t>d', function() trouble.toggle('diagnostics') end, {})
vim.keymap.set('n', 'gk', function() trouble.prev({ mode = 'diagnostics', skip_groups = true, jump = true }) end, {})
vim.keymap.set('n', 'gj', function() trouble.next({ mode = 'diagnostics', skip_groups = true, jump = true }) end, {})
