# Dotfiles 👷🏻‍♂️

This repository contains a all configuration files for my development environment and some instruction to install some dependencies and tools

## For Arch Linux

### Start

Install 1password
```
flatpak install https://downloads.1password.com/linux/flatpak/1Password-beta.flatpakref &&\
flatpak run com.onepassword.OnePassword
```

Install Github CLI
```
sudo pamac install github-cli
```

Login Github
```
gh auth login
```

Clone dotfiles
```
gh repo clone hrozan/dotfiles $HOME/.config/dotfiles
```

### Tools

Install `alacritty`
```
sudo pamac install alacritty
```

Install `alacritty`
```
sudo pamac install starship
```

Install `tmux`
```
sudo pamac install tmux
```

Install `fzf`
```
sudo pamac install fzf
```

Install `exa`
```
sudo pamac install exa
```

Install `bat`
```
sudo pamac install bat
```

Install `bat`
```
sudo pamac install curlie
```

Install Oh My ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Zsh Syntax Highlighting
```
sudo pamac install zsh-syntax-highlighting
```

Install Zsh FZF Plugin
```
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
```

Install Starship
```
sudo pamac install starship
```

Install git diff tool
```
sudo pamac install git-delta
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

### Dev Environment Setup

#### IDEs

Install Neovim
```
sudo pamac install neovim
```

Clone neovim config
```
gh repo clone hrozan/nvim $HOME/.config/nvim
```

Install Jetbrains ToolBox
```
sudo pamac install jetbrains-toolbox
```

#### Node

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

Install Typescript
```
sudo npm install -g typescript typescript-language-server yaml-language-server vscode-langservers-extracted dockerfile-language-server-nodejs bash-language-server emmet-ls
```

Install prettier
```
sudo npm install -g prettier
```

#### Rust

Install rustup
```
sudo pamac install rustup
```

Install default toolchain
```
sudo rustup toolchain install stable
```

Install rust analyzer
```
sudo pamac install rust-analyzer
```

#### Lua

Install Lua 
```
sudo pamac install lua
```

Install Lua Server 
```
sudo pamac install lua-language-server
```

Install Lua Rocks 
```
sudo pamac install luarocks
```

Install Lua Formatter 
```
luarocks install --server=https://luarocks.org/dev luaformatter
```

#### Docker

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

Install Gnome Extention Plugin 
```
sudo pamac install chrome-gnome-shell 
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
