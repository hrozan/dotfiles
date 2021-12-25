# Dotfiles 👷🏻‍♂️

This repository contains a all configuration files for my development environment and some instruction to install some dependencies and tools

### Getting Started

Install alacrity
```bash
pamac install alacrity
```

Install tmux
```bash
pamac install tmux
```

#### Nerd Fonts

__Cascadia Code__
```bash
pamac install nerd-fonts-cascadia-code
```

__Ubuntu Mono__ 
```bash
pamac install nerd-fonts-ubuntu-mono
```

#### ZSH

Install Oh My ZSH
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install ZSH Theme Poweline
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### Neovim

Install Neovim
```bash
pamac install neovim
```

Install Neovim Packer
```bash
pamac install nvim-packer-git
```

Instal Neovim NVChad
````bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim
``````
