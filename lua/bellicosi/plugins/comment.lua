return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
     -- import comment plugin safely
    local comment = require("Comment")
    
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")
    
    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
      
      -- Add keybindings
      mappings = {
        -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        -- Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
      },
    })

    -- Using leader key for commenting (more reliable across systems)
    vim.keymap.set('n', '<leader>/', 'gcc', { noremap = false })  -- Comment one line in normal mode
    vim.keymap.set('v', '<leader>/', 'gc', { noremap = false })   -- Comment multiple lines in visual mode
  end,
}


