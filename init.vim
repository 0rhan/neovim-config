"---------------CONFIG INFO---------------------------------,
"Configuration directory ".config/nvim/init.vim
"
" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
"-----------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'ghifarit53/tokyonight-vim'

" IDE-like tabline
Plug 'romgrk/barbar.nvim'

"This plugin aims to mimic tmux's display-pane feature, which enables you to choose a window interactively.
Plug 't9md/vim-choosewin'

"A simple plugin to toggle zoom of current window within the current tab.
Plug 'dhruvasagar/vim-zoom'

"Statusline
Plug 'vim-airline/vim-airline'

"A scrollbar for Vim statusline.
Plug 'ojroques/vim-scrollstatus'

"Statusline themes plugin
Plug 'vim-airline/vim-airline-themes'

"This (neo)vim plugin makes scrolling nice and smooth.
Plug 'psliwka/vim-smoothie'

"Devicons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"Color highlighter
Plug 'norcalli/nvim-colorizer.lua'

"Automatically highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'

"Make the yanked region apparent
Plug 'machakann/vim-highlightedyank'

"Indent Guides
Plug 'Yggdroot/indentLine'

"Winresizer plugin for easy resizing vim windows
Plug 'simeji/winresizer'

"Move lines
Plug 'matze/vim-move'

"Nerdcommenter
Plug 'preservim/nerdcommenter'

"Language packs
Plug 'sheerun/vim-polyglot'

"Snippets
Plug 'honza/vim-snippets'

"Emmet (Zencode)
Plug 'mattn/emmet-vim'

"Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

"Styled components syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"JSX
Plug 'MaxMEllon/vim-jsx-pretty'

"Coc is an intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"A Vim plugin which shows a git diff in the 'gutter
Plug 'airblade/vim-gitgutter'

"Lazygit in vim
Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }

"FloaTerm
"Use (neo)vim terminal in the floating/popup window.
Plug 'voldikss/vim-floaterm'

"vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Vlang support
Plug 'ollykel/v-vim'

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

"Codeline numbers
set number
"Current line highlight
set cursorline
"enable mouse
set mouse=a
"------------[Interface Configuration]-------------
set termguicolors
syntax on
set background=dark
set encoding=UTF-8
let g:tokyonight_style = 'storm'
colorscheme tokyonight
"--------------------------------------------------
"Set tabsize to 2 space
set ts=2 sw=2 et
"Show whitespace
set listchars=eol:¬,tab:»·,trail:·,space:·,  
set list

"--------Statusbar style---------------
let g:airline_theme = "tokyonight"
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

" Enable/disable close button
let bufferline.closable = v:false

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 0

nnoremap <silent> <A-c> :bw<CR>
"---------------------------------------------

"--------------[choosewin config]--------------
" invoke with '-'
nmap  -  <Plug>(choosewin)
" to use overlay feature
let g:choosewin_overlay_enable = 1
"----------------------------------------------

"--------[Indent line character]--------------------
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
"Colorize indentline guides 
let g:indentLine_color_gui = '#ffffff'
"----------------------------------------------------

"----Coc-explorer configuration----
map <C-n> :CocCommand explorer<CR>
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

"--------------------------FLOATERM-----------------------------------------
"FloaTerm keymap
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
"---------------------------------------------------------------------------

"____________________________CLOSETAG________________________________________
" Disables auto-close if not in a  region (based on filetype)
let g:closetag_filenames = '*.html,*.xhtml,*.js'
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
  \'coc-webpack',
  \'coc-react-refactor',
  \'coc-flutter-tools',
  \'coc-json', 
  \'coc-svg', 
  \'coc-styled-components',
  \'coc-explorer',]
"____________________________________________________________________

"_________________COC INTELLISENSE ENGINE CONFIGRATION________________
" if hidden is not set, TextEdit might fail.
set hidden

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
