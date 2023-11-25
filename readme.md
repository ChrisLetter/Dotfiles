# My dotfiles for Unix

## Details about the configuration

The main tools used are:

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [tmux](https://github.com/tmux/tmux/wiki/Installing)
- [neovim](https://github.com/neovim/neovim)

The Neovim configuration, tailored for JavaScript development, is based on [LazyVim](https://www.lazyvim.org/).
Linting and formatting:
- [standardjs](https://standardjs.com/) for linting and for formatting.
- [cspell](https://cspell.org/) for spell checking.
- [sonarlint](https://www.sonarlint.org/) for code quality.
- [editorconfig](https://editorconfig.org/) for consistent coding across editors.

## Installation

The dotfiles are stored in a separate folder to facilitate easier backup with Git and keeping the configuration organized.
This means that the files need to be symlinked to the home directory. You can use stow to automate this process.

```bash
# Install stow if not already installed
brew install stow # mac
sudo apt install stow # ubuntu

# Clone the repo and cd into it
cd dotfiles

# Backup your current config and remove .zshrc, .tmux.conf and .config/nvim if they exist

# Symlink the files
stow zsh
stow tmux
stow vim
```
