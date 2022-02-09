# Dotfiles 👷🏻‍♂️

This repository contains a all configuration files for my development environment and some instruction to install some dependencies and tools

## Fonts

Cascadia Code
```
pamac install nerd-fonts-cascadia-code
```

Ubuntu Mono 
```
pamac install nerd-fonts-ubuntu-mono
```

## Applications

Install `alacritty`
```
pamac install alacritty
```

Install Neovim
```
pamac install neovim
```

Install Jetbrains ToolBox
```
pamac install jetbrains-toolbox
```

## Tools

Install `tmux`
```
pamac install tmux
```

Install `exa`
```
pamac install exa
```

Install `bat`
```
pamac install bat
```

### Terminal Tools

Install Oh My ZSH
```
pamac install oh-my-zsh
```

Install Powerline 10k
```
pamac install zsh-theme-powerlevel10k
```

### Git Tools

Install git diff tool
```
pamac install git-delta
```

Install Github CLI
```
pamac install github-cli
```

## Environment Setup

### Rust

Install `rustup`
```
pamac install rustup
```

Install toolchain
```
rustup toolchain install stable
```

### Node

Install `node`
```
pamac install nodejs
```

Install `nvm`
```
pamac install nvm 
```

Set default node to system
```
nvm alias default system
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
Docker Compose
```
pamac install docker-compose
```
