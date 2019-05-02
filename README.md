General steps:

1) Install and configure ZSH:

https://medium.freecodecamp.org/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38

https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c

Configuration steps:

# ZSH

- Move OR delete the original ~/.zshrc file to the ~/.dotfiles folder:

`mv ~/.zshrc ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.zshrc ~/.zshrc`

# Vim

- Move OR delete the original ~/.vimrc file to the ~/.dotfiles folder:

`mv ~/.vimrc ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.vimrc ~/.vimrc`

# TMUX

- Move OR delete the original ~/.tmux.conf file to the ~/.dotfiles folder:

`mv ~/.tmux.conf ~/.dotfiles`

- Symlink the file:

`ln -s ~/.dotiles/.tmux.conf ~/.tmux.conf`

# iTerm

Go to `Preferences -> General`, select "Load preferences from a custom folder or URL:" and write `~/.dotfiles` in the field that becomes available.
