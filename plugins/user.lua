return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "makerj/vim-pdf",
    event = "User AstroFile"
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = {
      "TodoLocList",
      "TodoQuickFix",
      "TodoTelescope",
      "TodoTrouble"
    }
  },
  "nyoom-engineering/oxocarbon.nvim",
  {
    "jackMort/ChatGPT.nvim",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    cmd = {
      "ChatGPT",
      "ChatGPTActAs",
      "ChatGPTEditWithInstructions"
    },
    keys = {
      x = {
        { "<leader>e", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Edits with ChatGPT", mode = "x" }
      }
    }
  },
  {
    "rmagatti/goto-preview",
    event = "User AstroFile",
    opts = {
      width = 120,                                         -- Width of the floating window
      height = 15,                                         -- Height of the floating window
      border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" }, -- Border characters of the floating window
      default_mappings = true,                             -- Bind default mappings
      debug = false,                                       -- Print debug information
      opacity = nil,                                       -- 0-100 opacity level of the floating window where 100 is fully transparent.
      resizing_mappings = false,                           -- Binds arrow keys to resizing the floating window.
      post_open_hook = nil,                                -- A function taking two arguments, a buffer and a window to be ran as a hook.
      -- references = {                                       -- Configure the telescope UI for slowing the references cycling window.
      --   telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
      -- },
      -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
      focus_on_open = true,    -- Focus the floating window when opening it.
      dismiss_on_move = false, -- Dismiss the floating window when moving the cursor.
      force_close = true,      -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
      bufhidden = "wipe",      -- the bufhidden option to set on the floating window. See :h bufhidden
    }
  },
  {
    "davidgranstrom/nvim-markdown-preview",
    event = "User AstroFile"
  },
  {
    "DiegoMoralesRoman/MDInlineRunner.nvim",
    config = function(inline_runner)
      inline_runner.langs.python = {
        command = "python3 %s",
        icon = ""
      }

      inline_runner.langs.cpp = {
        -- command = "g++ -std=c++2a -x c++ %s -o /tmp/inline_markdown_runner_main && /tmp/inline_markdown_runner_main",
        -- Para el curso
        command =
        "g++ -g -std=c++2a -x c++ %s -o /tmp/inline_markdown_runner_main && cp /tmp/inline_markdown_runner /tmp/inline_markdown_runner.cpp && /tmp/inline_markdown_runner_main",
        icon = ""
      }


      inline_runner.langs.javascript = {
        command = "node %s",
        icon = ""
      }
      inline_runner.langs.js = inline_runner.langs.javascript
    end
  },
  "ayu-theme/ayu-vim",
  "TheNiteCoder/mountaineer.vim",
  "nelstrom/vim-blackboard",
  {
    "junegunn/goyo.vim",
    cmd = {
      "Goyo",
    }
  },
  {
    "dinhhuy258/vim-local-history",
    event = "User AstroFile",
    cmd = {
      "LocalHistoryToggle"
    },
  },
  {
    "jbyuki/venn.nvim",
    cmd = {
      "VBox"
    }
  },
  {
    "tpope/vim-surround",
    event = "User AstroFile"
  },
  {
    "stevearc/oil.nvim",
    opts = {

    }
  },
  -- {
  --   "aca/emmet-ls",
  --   event = "User AstroFile",
  --   config = function(emmet_ls)
  --     emmet_ls.setup({
  --       -- capabilities = capabilities,
  --       filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
  --       init_options = {
  --         html = {
  --           options = {
  --             -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
  --             ["bem.enabled"] = true,
  --           },
  --         },
  --       }
  --     })
  --   end
  -- }
}
