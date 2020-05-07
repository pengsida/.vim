# MY VIM CONFIGURATION

It has the following features:

1. based on the basic configuration of amix/vimrc
2. selectively choose some plugins of amix/vimrc
3. equiped with dracula theme

## Installation

1. Remove your vim first and `git clone https://github.com/pengsida/.vim.git`.
2. Install `vim-gnome` to support clipboard.
3. `pip install yapf` to support vim-autoformat.

You could arm this vim with YouCompleteMe through the commands:

```bash
cd ~/.vim/bundle
git clone --recursive https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
./install.py --clang-completer
```

You need revise ycm server python interpreter manually in ".vimrc", which should be the one you used to compile ycm.

Once you install YouCompleteMe, you will find that `<Tab>` does not trigger SnipMate any more, because a key mapping in YouCompleteMe blocks its function. To repair SnipMate, we can simply comment two lines of codes in "./bundle/YouCompleteMe/autoload/youcompleteme.vim":

```bash
for key in g:ycm_key_list_select_completion
    " With this command, when the completion window is visible, the tab key
    " (default) will select the next candidate in the window. In vim, this also
    " changes the typed-in text to that of the candidate completion.
    " exe 'inoremap <expr>' . key .
    "       \ ' pumvisible() ? "\<C-n>" : "\' . key .'"'
endfor
```

To use ack, you might need to install ack-grep for ubuntu:

```bash
sudo apt-get install ack-grep
```

To use vim-autoformat, you need to install yapf:

```
pip install yapf
```

Choose the latex compiler in `~/.vim/bundle/vim-latex/ftplugin/latex-suite`:

```
TexLet g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
```

## Frequently used plugins

1. CtrlP
    * List all files under current directory: `<ctrl-f>`
    * List all files under designated directory: `<leader>j`
    * List history opened files: `<ctrl-b>`
2. NerdTree
    * Toggle a sidebar listing project files: `<leader>nn`
    * Open a sidebar and place the cursor on the current filename: `<leader>nf`
3. YouCompleteMe
    * Jump to the definition or declaration: `<leader>jd`
4. GitFugitive
    * Git diff between current change and previous commit: `:Gvdiff`
    * Show all changes: `:Greview`
5. vim-snippets
    * Global snippets: `vim_runtime/sources_non_forked/vim-snippets/snippets/_.snippts`
6. vim-autoformat
    * Format the code: `:Yapf`
7. markdown-preview.vim
    * Open markdown preview window: `F8`
    * Close markdown preview window: `F9`

## Frequently used shortcuts

1. `<leader>` is `,`.
2. Open a new tab: `<leader>tn` or `<ctrl-n>`.
3. Switch between tabs: `J` and `K`, which means left switch and right switch, respectively.
4. Find a specific text: `<space>`.
5. Move to the beginning and the end of the line: `H` and `L`.
6. Copy the text to the system clipboard: `<ctrl-y>`.
7. Annotate a line: `<ctrl-g>`.
8. Reload a file: `:e`.
8. Discard local changes and reload the file: `:e!`.

## Seldom used shortcuts

1. [`<leader>d`](https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim)
