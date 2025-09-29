
# How to prepare you minimal tmux.conf

Create a directory and `cd` into it.
```
mkdir ~/work/
cd work
```

Clone the dotfiles repo
```
git clone git@github.com:quaziashfaq/dotfiles.git
```

Link the tmux.conf
```
cd ~
mkdir .config/
ln -s ~/work/dotfiles/tmux ~/.config/tmux
```
