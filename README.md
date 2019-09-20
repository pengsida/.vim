# MY VIM CONFIGURATION

Have the following features:

1. based on the basic configuration of amix/vimrc
2. selectively choose some plugins of amix/vimrc
3. equiped with dracula theme

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

Choose the latex compiler in `~/.vim/bundle/vim-latex/ftplugin/latex-suite`:

```
TexLet g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
```

