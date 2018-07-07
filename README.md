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

To use ack, you might need to install ack-grep for ubuntu:

```bash
sudo apt-get install ack-grep
```

