# Linux

Install git

```bash
sudo pacman -S --needed git base-devel
```

Install yay

```bash
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

Install 1password

```bash
yay -S 1password
```

Install Github CLI

```bash
yay -S github-cli
```

Login Github

```bash
gh auth login
```

Clone dotfiles

```bash
gh repo clone hrozan/dotfiles $HOME/.config/dotfiles
```

Install gnome browser extention

```bash
yay -S chrome-gnome-shell
```

Install Kitty

```bash
sudo pamac install kitty
```

Install starship

```bash
yay -S starship
```

Install fzf

```bash
yay -S fzf
```

Install exa

```bash
yay -S exa
```

Install bat

```bash
yay -S bat
```

Install curlie

```bash
yay -S curlie
```

Install zsh

```bash
yay -S zsh
```

Install zsh completion

```bash
yay -S zsh-completions
```

Install Oh My ZSH

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Zsh Syntax Highlighting

```bash
yay -S zsh-syntax-highlighting
```

Install Zsh FZF Plugin

```bash
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
```

Install git diff tool

```bash
yay -S git-delta
```

Jebrains Mono

```bash
yay -S ttf-jetbrains-mono
```

Jetbrains Mono Nerd Font

```bash
yay -S nerd-fonts-jetbrains-mono-160
```

Install Node

```bash
yay -S nodejs
```

Install npm

```bash
yay -S npm 
```

Install nvm

```bash
yay -S nvm 
```

Set default node to system

```bash
nvm alias default system
```

Install Typescript LSP

```bash
sudo npm install -g typescript typescript-language-server
```

Instal Other LSPs

```bash
sudo npm install -g yaml-language-server vscode-langservers-extracted dockerfile-language-server-nodejs bash-language-server emmet-ls
```

Install prettier

```bash
sudo npm install -g prettier
```

Install rustup

```bash
yay -S rustup
```

Install default toolchain

```bash
rustup toolchain install stable
```

Install rust analyzer

```bash
yay -S rust-analyzer
```

Install Lua

```bash
yay -S lua
```

Install Lua Server

```bash
yay -S lua-language-server
```

Install Lua Rocks

```bash
yay -S luarocks
```

Install Lua Formatter

```bash
yay -S stylua
```

Install Neovim

```bash
yay -S neovim
```

Install Neovim Packer

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Clone neovim config

```bash
gh repo clone hrozan/nvim $HOME/.config/nvim
```

Install plugins

```bash
nvim -c "PackerSync"
```

Install Jetbrains ToolBox

```bash
yay -S jetbrains-toolbox
```

Install `docker`

```bash
sudo pamac install docker
```

Start service

```bash
sudo systemctl enable docker.service &&\
sudo systemctl start docker.service
```

Add user to root group

```bash
sudo gpasswd -a $USER docker
```

Docker Compose

```bash
yay -S docker-compose
```

Install Spotify

```bash
flatpak install flathub com.spotify.Client
```

Install Discord

```bash
flatpak install flathub com.discordapp.Discord
```
