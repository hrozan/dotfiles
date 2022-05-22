# Dotfiles 👷🏻‍♂️

This repository contains a all configuration files for my development environment and some instruction to install some dependencies and tools

## For Arch Linux

### Start

Install Github CLI
```
sudo pamac install github-cli
```
```
gh auth login
```

Clone dotfiles
```
cd $HOME/.config && gh repo clone hrozan/dotfiles
```

### Fonts

Cascadia Code
```
sudo pamac install nerd-fonts-cascadia-code
```

Ubuntu Mono 
```
sudo pamac install nerd-fonts-ubuntu-mono
```

## Tools

Install `alacritty`
```
sudo pamac install alacritty
```

Install Neovim
```
sudo pamac install neovim
```

Install `tmux`
```
sudo pamac install tmux
```

Install `exa`
```
sudo pamac install exa
```

Install `bat`
```
sudo pamac install bat
```

Install Oh My ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Zsh Syntax Highlighting
```
sudo pamac install zsh-syntax-highlighting
```

Install Starship
```
sudo pamac install starship
```

Install git diff tool
```
sudo pamac install git-delta
```

## Dev Environment Setup

Install Jetbrains ToolBox
```
sudo pamac install jetbrains-toolbox
```

Install `rustup`
```
sudo pamac install rustup
```

Install toolchain
```
sudo rustup toolchain install stable
```

Install `node`
```
sudo pamac install nodejs
```

Install `nvm`
```
sudo pamac install nvm 
```

Set default node to system
```
nvm alias default system
```

Install `yarn`
```
sudo pamac install yarn 
```

Install `docker`
```
sudo pamac install docker
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
sudo pamac install docker-compose
```

### Extras

Install Dash to Panel
```
sudo pamac install ulauncher 
```

Install Dash to Panel
```
sudo pamac install gnome-shell-extension-dash-to-panel 
```

Install Spotify
```
flatpak install flathub com.spotify.Client
```

Install Discord
```
flatpak install flathub com.discordapp.Discord
```

Install Dropbox
```
flatpak install flathub com.dropbox.Client
```