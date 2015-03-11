# Setup
* setup iTerm (...)
* set shell to ZSH
* run this:
```Shell
cd

# Otherwise all subsequent git operations will be slow as hell
echo "*" > .gitignore

git init
git remote add origin https://github.com/KevinCorcoran/dotfiles2.git
git fetch
git checkout --track origin/master
git submodule init
git submodule update
```
* close shell
* open new shell
