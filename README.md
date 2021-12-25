# Dotfiles 👷🏻‍♂️

This repository contains a all configuration files for my development environment and some instruction to install some dependencies and tools

## Tools

Install `alacrity`
```
pamac install alacrity
```

Install `tmux`
```
pamac install tmux
```

Install `exa`
```
pamac install exa
```

Install Jetbrains ToolBox
```
pamac install jetbrains-toolbox
```

### Nerd Fonts

Cascadia Code
```
pamac install nerd-fonts-cascadia-code
```

Ubuntu Mono 
```
pamac install nerd-fonts-ubuntu-mono
```

### ZSH

Install Oh My ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install ZSH Syntaxe Highlight
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Install ZSH Theme Poweline
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### Neovim

Install Neovim
```
pamac install neovim
```

Install Packer
```
pamac install nvim-packer-git
```

Install NVChad
````
git clone https://github.com/NvChad/NvChad ~/.config/nvim
``````

### Git

Install git diff tool
```
pamac install git-delta
```

Install Github CLI
```
pamac install github-cli
```

## Environment Setup

Install `go`
```
pamac install go
```

Install `node`
```
pamac install nodejs
```

Install `yarn`
```
pamac install yarn 
```

### Docker

Install `docker`
```
pamac install docker
```

Start service
```
sudo systemctl enable docker.service &&\
sudo systemctl start docker.service
```

Add user to root group
```
sudo gpasswd -a $USER docker
```

