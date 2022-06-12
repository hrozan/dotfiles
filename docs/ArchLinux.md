### Start

Install 1password
```
flatpak install https://downloads.1password.com/linux/flatpak/1Password-beta.flatpakref &&\
flatpak run com.onepassword.OnePassword
```

Install Github CLI
```
sudo pacman -S  github-cli
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

Install Alacritty
```
sudo pamac install alacritty
```

Install starship
```
sudo pacman -S starship
```

Install tmux
```
sudo pacman -S tmux
```

Install fzf
```
sudo pacman -S fzf
```

Install exa
```
sudo pacman -S exa
```

Install bat
```
sudo pacman -S bat
```

Install curlie
```
sudo pacman -S curlie
```

Install zsh
```
sudo pacman -S zsh
```

Install zsh completion
```
sudo pacman -S zsh-completions
```

Install Oh My ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Zsh Syntax Highlighting
```
sudo pacman -S zsh-syntax-highlighting
```

Install Zsh FZF Plugin
```
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
```

Install git diff tool
```
sudo pacman -S git-delta
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

Jebrains Mono
```
yay -S ttf-jetbrains-mono
```

Jetbrains Mono Nerd Font
```
yay -S nerd-fonts-jetbrains-mono-160
```

### Dev Environment Setup

#### Node

Install Node
```
sudo pacman -S nodejs
```

Install npm
```
sudo pacman -S npm 
```

Install nvm
```
sudo pacman -S nvm 
```

Set default node to system
```
nvm alias default system
```

Install yarn
```
sudo sudo pacman -S yarn 
```

Install Typescript LSP
```
sudo npm install -g typescript typescript-language-server
```

Instal Other LSPs
```
sudo npm install -g yaml-language-server vscode-langservers-extracted dockerfile-language-server-nodejs bash-language-server emmet-ls
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
rustup toolchain install stable
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
sudo luarocks install --server=https://luarocks.org/dev luaformatter
```

#### Neovim

Install Neovim
```
sudo pamac install neovim
```

Install Neovim Packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Clone neovim config
```
gh repo clone hrozan/nvim $HOME/.config/nvim
```

Install plugins
```
nvim -c "PackerSync"
```

#### Jetbrains Toolbox

Install Jetbrains ToolBox
```
sudo pamac install jetbrains-toolbox
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

Install Ulauncher
```
sudo pamac install ulauncher 
```

Install Gnome Extention Plugin 
```
sudo pamac install chrome-gnome-shell 
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

