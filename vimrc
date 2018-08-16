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

call vundle#end()
filetype plugin indent on

let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:BASH_Ctrl_j = 'off'
nnoremap <C-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set clipboard=unnamed

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : exists("g:loaded_snips") ? "\<C-r>=snipMate#TriggerSnippet()\<CR>" : "\<Tab>"

set clipboard=unnamed

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <CR> o<Esc>gk
nnoremap <C-s> :w<CR>
vnoremap <C-s> <Esc>:w<CR>gv
inoremap <C-s> <Esc>:w<CR>a
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

