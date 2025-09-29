# How to prepare you minimal vimrc

Create a directory and `cd` into it.
```
mkdir ~/work/
cd work
```

Clone the dotfiles repo
```
git clone git@github.com:quaziashfaq/dotfiles.git
```

Link the vimrc
```
cd ~
ln -s ~/work/dotfiles/vim/vimrc .vimrc
```

Install vim-plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```
ln -s ~/work/dotfiles/vim/after .vim/after
```
