local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", " :BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
-- Close buffer
map("n", "<C-c>", ":bw<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map("n", "<C-p>", ":BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", ":BufferOrderByLanguage<CR>", opts)

vim.g.barbar_auto_setup = false -- disable auto-setup

require("barbar").setup({
  -- Enable/disable animations
  animation = true,

  -- Automatically hide the tabline when there are this many buffers left.
  -- Set to any value >=0 to enable.
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
  -- Valid options are 'left' (the default), 'previous', and 'right'
  focus_on_close = "left",

  -- Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
  hide = { extensions = false, inactive = false },

  -- Disable highlighting alternate buffers
  highlight_alternate = false,

  -- Disable highlighting file icons in inactive buffers
  highlight_inactive_file_icons = false,

  -- Enable highlighting visible buffers
  highlight_visible = true,

  icons = {
    buffer_index = false,
    buffer_number = false,
    button = "",
    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "" },
      [vim.diagnostic.severity.WARN] = { enabled = true, icon = "" },
      [vim.diagnostic.severity.INFO] = { enabled = true, icon = "" },
      [vim.diagnostic.severity.HINT] = { enabled = true, icon = "󰋼" },
    },
    gitsigns = {
      added = { enabled = true, icon = "+" },
      changed = { enabled = true, icon = "~" },
      deleted = { enabled = true, icon = "-" },
    },
    filetype = {
      -- Sets the icon's highlight group.
      -- If false, will use nvim-web-devicons colors
      custom_colors = false,

      -- Requires `nvim-web-devicons` if `true`
      enabled = true,
    },
    separator = { left = "▎", right = "" },

    -- If true, add an additional separator at the end of the buffer list
    separator_at_end = false,

    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = { button = "●" },
    pinned = { button = "", filename = true },

    -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
    preset = "slanted",

    -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- Supports all the base icon options, plus `modified` and `pinned`.
    alternate = { filetype = { enabled = false } },
    current = { buffer_index = true },
    inactive = { button = "×" },
    visible = { modified = { buffer_number = false } },
  },

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = true,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the minimum padding width with which to surround each tab
  minimum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- Sets the minimum buffer name length.
  minimum_length = 0,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- Set the filetypes which barbar will offset itself for
  sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = nil}
    NvimTree = true,
    -- Or, specify the text used for the offset:
    undotree = { text = "undotree" },
    -- Or, specify the event which the sidebar executes when leaving:
    ["neo-tree"] = { event = "BufWipeout" },
    -- Or, specify both
    Outline = { event = "BufWinLeave", text = "symbols-outline" },
  },

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustment
  -- for other layouts.
  letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
})
