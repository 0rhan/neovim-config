"---------------CONFIG INFO---------------------------------
"Configuration directory ".config/nvim/init.vim
"
" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'sainnhe/edge'

"Statusline
Plug 'vim-airline/vim-airline'

"Statusline themes plugin
Plug 'vim-airline/vim-airline-themes'

"Devicons
Plug 'ryanoasis/vim-devicons'

"Color highlighter
Plug 'norcalli/nvim-colorizer.lua'

"Indent Guides
Plug 'Yggdroot/indentLine'

"Move lines
Plug 'matze/vim-move'

"Nerdcommenter
Plug 'preservim/nerdcommenter'

"Language packs
Plug 'sheerun/vim-polyglot'

"Styled components syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Coc is an intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Auto close (X)HTML tags
Plug 'alvan/vim-closetag'

"A Vim plugin which shows a git diff in the 'gutter
Plug 'airblade/vim-gitgutter'

"Lazygit in vim
Plug 'kdheepak/lazygit.vim', { 'branch': 'nvim-v0.4.3' }

"FloaTerm
"Use (neo)vim terminal in the floating/popup window.
Plug 'voldikss/vim-floaterm'

"vim-nerdtree-syntax-highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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
"Interface Configuration
set termguicolors
syntax on
"Set tabsize to 2 space
set ts=2 sw=2 et
"Show whitespace
set listchars=eol:¬,tab:»·,trail:·,space:·,  
set list
"Statusbar style
let g:airline_powerline_fonts = 1
"Tab bar style
let g:airline#extensions#tabline#enabled = 1

"Color highlight (nvim-colorizer.lua)
lua require'colorizer'.setup()

"----------Theme------------
set background=dark
set encoding=UTF-8

" the configuration options should be placed before `colorscheme edge`
let g:edge_style = 'aura'
let g:edge_disable_italic_comment = 1

colorscheme edge 
let g:airline_theme = 'edge'

"Disable continuation of comments to the next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"-----------------------------

"Indent line character
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
"Colorize indentile guides 
let g:indentLine_color_gui = '#ffffff'

"NERDTree configuration
map <C-n> :CocCommand explorer<CR>
"
"Correct comment highlight for json
autocmd FileType json syntax match Comment +\/\/.\+$+

"Lazygit config
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
"Mapping to call lazygit
nnoremap <silent> <leader>lg :LazyGit<CR> 

"FloaTerm keymap
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'


"__________________COC EXTENSIONS CONFIGURATION_______________________
let g:coc_global_extensions = [
  \'coc-pairs',
  \'coc-snippets',
  \'coc-spell-checker',
  \'coc-discord',
  \'coc-prettier',
  \'coc-yaml',
  \'coc-xml',
  \'coc-html',
  \'coc-css',
  \'coc-cssmodules',
  \'coc-tsserver',
  \'coc-eslint', 
  \'coc-react-refactor',
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
