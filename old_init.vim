"Configuration directory ".config/nvim/init.vim
"---------------CONFIG INFO---------------------------------,
"
" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
"-----------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" IDE-like tabline
Plug 'romgrk/barbar.nvim'

"Highly extendable fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

"This plugin aims to mimic tmux's display-pane feature, which enables you to choose a window interactively.
Plug 't9md/vim-choosewin'

"A simple plugin to toggle zoom of current window within the current tab.
Plug 'dhruvasagar/vim-zoom'

"Git decorations
Plug 'lewis6991/gitsigns.nvim'

"Statusline
Plug 'vim-airline/vim-airline'

"A scrollbar for Vim statusline.
Plug 'ojroques/vim-scrollstatus'

"Statusline themes plugin
Plug 'vim-airline/vim-airline-themes'

"This (neo)vim plugin makes scrolling nice and smooth.
Plug 'psliwka/vim-smoothie'

"Color highlighter
Plug 'norcalli/nvim-colorizer.lua'

"Automatically highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'

"Make the yanked region apparent
Plug 'machakann/vim-highlightedyank'

"Indent Guides
Plug 'lukas-reineke/indent-blankline.nvim'

"Winresizer plugin for easy resizing vim windows
Plug 'simeji/winresizer'

"Move lines
Plug 'matze/vim-move'

"A simple plugin to toggle zoom of current window within the current tab.
Plug 'dhruvasagar/vim-zoom'

"Nerdcommenter
Plug 'preservim/nerdcommenter'

"Language packs
Plug 'sheerun/vim-polyglot'

"Snippets
Plug 'honza/vim-snippets'

"Syntax highlighting and indentation for Svelte 3 components.
Plug 'evanleck/vim-svelte'

"Emmet (Zencode)
Plug 'mattn/emmet-vim'

"Automatically rename closing HTML/XML tags
Plug 'AndrewRadev/tagalong.vim'

"Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

"Styled components syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Vim commands for Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

"JSX
Plug 'MaxMEllon/vim-jsx-pretty'

"Coc is an intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Git diff
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'


"Lazygit in vim
Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }

"Persist and toggle multiple terminals during an editing session
Plug 'akinsho/toggleterm.nvim'


"-----------------------------EXAMPLES------------------------------------------
" " Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
" " Initialize plugin system
" ----------------------------------------------------------------------------
call plug#end()

"---THEME
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_comments = 1
let g:tokyonight_italic_keywords = 1
let g:tokyonight_dark_sidebar = 1

"GUI font
set guifont=DejaVuSansMono\ Nerd\ Font\ Mono:h12

"System clipboard
nmap <c-c> "+y
vmap <c-c> "+y
nmap <c-v> "+p
inoremap <c-v> <c-r>+
cnoremap <c-v> <c-r>+
"use <c-r> to insert original character without triggering things like auto-pairs
inoremap <c-r> <c-v>
"------------[Interface Configuration]-------------
set termguicolors
colorscheme tokyonight 
"--------------------------------------------------
"Set tabsize to 2 space
set ts=2 sw=2 et

"--------Statusbar style---------------
"let g:airline_theme = 'tokyonight'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0B8"
let g:airline_right_sep = "\uE0BA"
  "--------ScrollStatus----------------
let g:airline_section_x = '%{ScrollStatus()} '
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
            \ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
            \ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}',
            \ ])
"--------------------------------------

"-----------------[telescope fzf]------------------
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"__________________[nvim tree]___________________
lua << EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_open           = false,
  auto_close          = false,
  hide_dotfiles       = false,
  open_on_tab         = true,
  hijack_cursor       = true,
  update_cwd          = true,
  diagnostics = {
    enable = false,
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

  view = {
    width = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
EOF

let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_gitignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_width_allow_resize  = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 0 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ] " List of filenames that gets highlighted with NvimTreeSpecialFile

"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'lsp': 1,
    \ }


" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }


nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

" a list of groups can be found at `:help nvim_tree_highlight`
hi NvimTreeFolderIcon guifg = #61afef
hi NvimTreeFolderName guifg = #61afef
hi NvimTreeIndentMarker guifg= #383c44
"_________________________________________________________________________________

"------------[GIT SIGNS]--------------
set statusline+=%{get(b:,'gitsigns_status','')}
lua <<EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  keymaps = {
    -- Default keymap options
    noremap = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'"},

    ['n <leader>hs'] = '<cmd>Gitsigns stage_hunk<CR>',
    ['v <leader>hs'] = ':Gitsigns stage_hunk<CR>',
    ['n <leader>hu'] = '<cmd>Gitsigns undo_stage_hunk<CR>',
    ['n <leader>hr'] = '<cmd>Gitsigns reset_hunk<CR>',
    ['v <leader>hr'] = ':Gitsigns reset_hunk<CR>',
    ['n <leader>hR'] = '<cmd>Gitsigns reset_buffer<CR>',
    ['n <leader>hp'] = '<cmd>Gitsigns preview_hunk<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
    ['n <leader>hS'] = '<cmd>Gitsigns stage_buffer<CR>',
    ['n <leader>hU'] = '<cmd>Gitsigns reset_buffer_index<CR>',

    -- Text objects
    ['o ih'] = ':<C-U>Gitsigns select_hunk<CR>',
    ['x ih'] = ':<C-U>Gitsigns select_hunk<CR>'
  },
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 500,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = false
  },
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
EOF

"-------[GIT DIFF]-----------------
lua <<EOF
local cb = require'diffview.config'.diffview_callback

require'diffview'.setup {
  diff_binaries = false,    -- Show diffs for binaries
  file_panel = {
    position = "left",      -- One of 'left', 'right', 'top', 'bottom'
    width = 35,             -- Only applies when position is 'left' or 'right'
    height = 10,            -- Only applies when position is 'top' or 'bottom'
  },
  key_bindings = {
    disable_defaults = false,                   -- Disable the default key bindings
    -- The `view` bindings are active in the diff buffers, only when the current
    -- tabpage is a Diffview.
    view = {
      ["<tab>"]     = cb("select_next_entry"),  -- Open the diff for the next file 
      ["<s-tab>"]   = cb("select_prev_entry"),  -- Open the diff for the previous file
      ["<leader>e"] = cb("focus_files"),        -- Bring focus to the files panel
      ["<leader>b"] = cb("toggle_files"),       -- Toggle the files panel.
    },
    file_panel = {
      ["j"]             = cb("next_entry"),         -- Bring the cursor to the next file entry
      ["<down>"]        = cb("next_entry"),
      ["k"]             = cb("prev_entry"),         -- Bring the cursor to the previous file entry.
      ["<up>"]          = cb("prev_entry"),
      ["<cr>"]          = cb("select_entry"),       -- Open the diff for the selected entry.
      ["o"]             = cb("select_entry"),
      ["<2-LeftMouse>"] = cb("select_entry"),
      ["S"]             = cb("toggle_stage_entry"), -- Stage / unstage the selected entry.
      ["U"]             = cb("unstage_all"),        -- Unstage all entries.
      ["X"]             = cb("restore_entry"),      -- Restore entry to the state on the left side.
      ["R"]             = cb("refresh_files"),      -- Update stats and entries in the file list.
      ["<tab>"]         = cb("select_next_entry"),
      ["<s-tab>"]       = cb("select_prev_entry"),
      ["<leader>e"]     = cb("focus_files"),
      ["<leader>b"]     = cb("toggle_files"),
    }
  }
}
EOF

"-------------[TOGGLETERM]-----------------
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
lua <<EOF
require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 20,
  open_mapping = [[<F12>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
}
EOF
"---------------------------------------------

"--Color highlight (nvim-colorizer.lua)--
lua require'colorizer'.setup()
"----------------------------------------

"------Illuminate--------------------
" Time in milliseconds (default 250)
let g:Illuminate_delay = 250
"------------------------------------

"Disable continuation of comments to the next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"-----------------------------

"------------[barbar config]--------------
let bufferline = {}

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable icons
" if set to "numbers", will show buffer index in the tabline
let bufferline.icons = v:true

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = ''

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 0

"Buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>

" Goto buffer in position
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

" Close buffer
nnoremap <silent>    <A-c> :bw<CR>
"---------------------------------------------


"--------------[choosewin config]--------------
" invoke with '-'
nmap  -  <Plug>(choosewin)
" to use overlay feature
let g:choosewin_overlay_enable = 1
"----------------------------------------------

"--------[Indent line character]--------------------
let g:indentLine_enabled = 1
let g:indent_blankline_char = '▏'
let g:indent_blankline_show_trailing_blankline_indent = 0
let g:indent_blankline_show_first_indent_level = 0 
"Colorize indentline guides 
hi IndentBlanklineChar guifg=#8a9399
"----------------------------------------------------

"---------------------------------
"Correct comment highlight for json
autocmd FileType json syntax match Comment +\/\/.\+$+


"--------------------LAZYGIT----------------------------------------------
"Lazygit config
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
"Mapping to call lazygit
nnoremap <silent> <leader>lg :LazyGit<CR> 
"--------------------------------------------------------------------------

"____________________________CLOSETAG________________________________________
" Disables auto-close if not in a  region (based on filetype)
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.tsx'
let g:closetag_regions = {
\ 'typescript.tsx': 'jsxRegion,tsxRegion',
\ 'javascript.jsx': 'jsxRegion',
\}
"____________________________________________________________________________

"_____________________________EMMET__________________________________________
"config for jsx syntax in js files
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
"____________________________________________________________________________

"_______________________COC-PAIRS____________________________________________
"For enable closetag
let b:coc_pairs_disabled = ['<']
"____________________________________________________________________________


"----------------------------[Vim-flutter]-----------------------------------
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

"__________________COC EXTENSIONS CONFIGURATION_______________________
let g:coc_global_extensions = [
  \'coc-marketplace',
  \'coc-snippets',
  \'coc-pairs',
  \'coc-spell-checker',
  \'coc-discord-neovim',
  \'coc-prettier',
  \'coc-yaml',
  \'coc-xml',
  \'coc-import-cost',
  \'coc-html',
  \'coc-emmet',
  \'coc-css',
  \'coc-scssmodules',
  \'coc-cssmodules',
  \'coc-tsserver',
  \'coc-eslint', 
  \'coc-svelte',
  \'coc-webpack',
  \'coc-react-refactor',
  \'coc-json', 
  \'coc-svg', 
  \'coc-styled-components',
  \'coc-stylelintplus',]
"____________________________________________________________________

"_________________COC INTELLISENSE ENGINE CONFIGRATION________________
" if hidden is not set, TextEdit might fail.

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=100

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
