-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    -- TermGUI configuration
    termguicolors = true,
    -- guifont = "JetBrains Mono:h13.1",
    guifont = "JetBrains Mono:h12"
  },
  g = {

    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = false,      -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 3,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    instant_username = "Diemar2002",
    neovide_hide_mouse_when_typing = true,
    neovide_cursor_trail_size = 0.3,
    neovide_cursor_unfocused_outline_width = 0.1,
    neovide_cursor_vfx_mode = "pixiedust",
    neovide_cursor_vfx_particle_density = 20,
    neovide_cursor_vfx_particle_speed = 30,
    neovide_cursor_vfx_particle_opacity = 255,
    -- Configure colors
    terminal_color_0 = '#242D35',
    terminal_color_1 = '#FB6396',
    terminal_color_2 = '#94CF95',
    terminal_color_3 = '#F692B2',
    terminal_color_4 = '#6EC1D6',
    terminal_color_5 = '#CD84C8',
    terminal_color_6 = '#7FE4D2',
    terminal_color_7 = '#FFFFFF',
    terminal_color_8 = '#526170',
    terminal_color_9 = '#F92D72',
    terminal_color_10 = '#6CCB6E',
    terminal_color_11 = '#F26190',
    terminal_color_12 = '#4CB9D6',
    terminal_color_13 = '#C269BC',
    terminal_color_14 = '#58D6BF',
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
