set runtimepath+=~/.vim/vim_runtime

source ~/.vim/vim_runtime/vimrcs/basic.vim
source ~/.vim/vim_runtime/vimrcs/filetypes.vim
source ~/.vim/vim_runtime/vimrcs/plugins_config.vim
source ~/.vim/vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

let g:NERDTreeWinPos = "left"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'airblade/vim-gitgutter'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()
filetype plugin indent on

let g:ycm_server_python_interpreter='/home/pengsida/Software/anaconda3/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist={}
set completeopt-=preview
let g:ycm_goto_buffer_command='new-tab'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:BASH_Ctrl_j = 'off'
nnoremap <C-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set clipboard=unnamed

inoremap <expr> <Tab> exists("g:loaded_snips") ? "\<C-r>=snipMate#TriggerSnippet()\<CR>" : "\<Tab>"
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : exists("g:loaded_snips") ? "\<C-r>=snipMate#TriggerSnippet()\<CR>" : "\<Tab>"

set clipboard=unnamed

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <C-s> :w<CR>
vnoremap <C-s> <Esc>:w<CR>gv
inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-q> :q<CR>
vnoremap <C-q> <Esc>:q<CR>
inoremap <C-q> <Esc>:q<CR>
let g:vim_markdown_folding_disabled = 1
set nohlsearch
nnoremap <leader>g :Ack!<Space>
nnoremap J gT
nnoremap K gt
nnoremap b F
nnoremap <leader>d "_d
nnoremap <leader>D "_D
nnoremap <leader>c "_c
nnoremap <leader>C "_C
nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>StopMarkdownPreview
imap <silent> <F9> <Plug>StopMarkdownPreview
set nofoldenable

autocmd FileType latex,tex,md,markdown setlocal spell
set formatoptions-=tc
let g:Imap_UsePlaceHolders=0
let g:go_version_warning=0

let g:gitgutter_enabled=1
set updatetime=100
map <leader>gge :GitGutterEnable
map <leader>ggd :GitGutterDisable
command Greview :Git! diff --diff-filter=d

nmap <leader>j :CtrlP<Space>
let g:ctrlp_bufname_mod = ':~:.'
let g:ctrlp_bufpath_mod = ''
unlet g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|record|cache)|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|npy|pkl|png|jpg|pth)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

nnoremap <C-n> :tabnew<CR>
vnoremap <C-y> "+y

let g:formatters_python = ['yapf']
let g:formatter_yapf_style = 'pep8'

nmap <C-g> vgc:w<CR>
vmap <C-g> gc:w<CR>
