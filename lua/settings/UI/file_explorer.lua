local g = vim.g
local highlight = vim.highlight

require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_buffer_on_setup = false,
  ignore_ft_on_setup   = {},
  auto_reload_on_write = true,
  open_on_tab          = true,
  hijack_cursor        = true,
  update_cwd           = true,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "all",
    add_trailing = true,
    indent_markers = {
      enable = true,
    },
  icons = {
    webdev_colors = true,
    git_placement = "before",
    show = {
     file = true,
     folder = true,
     folder_arrow = true,
     git = true,
    },
  },
  },
  diagnostics = {
    enable = enable,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  log = {
    enable = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
}
