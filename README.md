Usage
=====

First, backup your existing `.vim` directory:

    mv ~/.vim ~/.vim-backup

And backup your configuration files:

    mv ~/.vimrc ~/.vimrc-backup
    mv ~/.gvimrc ~/.gvimrc-backup

Now clone this repository:

    git clone git://github.com/soveran/vim-files.git ~/.vim

In your `~/.vimrc` put this:

    source ~/.vim/vimrc.vim
