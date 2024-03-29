General steps:

1) Install and configure ZSH:

https://medium.freecodecamp.org/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38

https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c

Configuration steps:

# Neovim

 - Place init.vim under ~/.config/nvim
 - Clone Vundle.vim into ~/.config/nvim/bunlde/Vundle.vim
 `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim`

# ZSH

- Move the original ~/.zshrc file to the ~/.dotfiles folder:

`mv ~/.zshrc ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.zshrc ~/.zshrc`

# Vim

Check if both Macvim and Vim were previously installed using Homebrew. If that's the case do:

`$ brew uninstall vim`

- Move the original ~/.vimrc file to the ~/.dotfiles folder:

`mv ~/.vimrc ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.vimrc ~/.vimrc`

- Move the original ~/.vim folder to the ~/.dotfiles folder:

`mv ~/.vim ~/.dotfiles`

- Symlink the folder:

`ln -s ~/.dotfiles/.vim ~/.vim`

# TMUX

- Move the original ~/.tmux.conf file to the ~/.dotfiles folder:

`mv ~/.tmux.conf ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.tmux.conf ~/.tmux.conf`

# iTerm

Go to `Preferences -> General`, select "Load preferences from a custom folder or URL:" and write `~/.dotfiles` in the field that becomes available.

# OBS: YouCompleteMe:

[clang_complete](https://github.com/Rip-Rip/clang_complete) must be installed for this plugin to work with C/C++

This plugin only works with C/C++, when LLVM is installed:

`$ brew install llvm`

This plugin cannot be setup correctly using a Homebrew installation of Python. In order to fix that do:

`$ brew unlink python`

1) Download [LLVM](http://releases.llvm.org/download.html) and place all of its inside contents (bin, include...) inside ~/ycm_temp/llvm_root_dir

2) Install [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#mac-os-x) using Vundle and then:

`$ cd ~/.vim/bundle/YouCompleteMe`

`$ ./install.py --clang-completer`

3) Create a new folder called `ycm_build` under `~` and do:

`$ cd ~/ycm_build`

4) Run:

```
$ cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir 
-DPYTHON_INCLUDE_DIR=/usr/local/Frameworks/Python.framework/Headers 
-DPYTHON_LIBRARY=/usr/local/Frameworks/Python.framework/Python . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```

`$ cmake --build . --target ycm_core`

5) Optional: Download [.ycm_extra_conf.py](https://github.com/Valloric/ycmd/blob/master/examples/.ycm_extra_conf.py), save it under `~/.vim` and then add the following line to your `.vimrc`:

```
" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py" 
```
