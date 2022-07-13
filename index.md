# Higor Rozan tutorial to setup Linux and Windows 


## Linux

Install git

```bash
sudo pacman -S --needed git base-devel git-delta github-cli
```

Install yay

```bash
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

Install 1password

```bash
yay -S git-delta github-cli 1password 
```

Login Github

```bash
gh auth login
```

Clone dotfiles

```bash
gh repo clone dotfiles $HOME/.config/dotfiles
```



Install terminal tools

```bash
sudo pamac install kitty zsh zsh-completions starship fzf exa bat curlie 
```

Install Oh My ZSH and plugins

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&\
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin &&\
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

Install neovim

```bash
yay -S neovim neovide &&\
gh repo clone nvim $HOME/.config/nvim &&\
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim &&\
nvim -c "PackerSync"
```

Jetbrains Mono Nerd Font

```bash
yay -S nerd-fonts-jetbrains-mono-160
```

Install Node and Tools

```bash
yay -S nodejs npm nvm &&\
sudo npm install -g typescript typescript-language-server yaml-language-server bash-language-server vscode-langservers-extracted &&\
sudo npm install -g prettier
```

Install Rust and LSP

```bash
yay -S rustup rust-analyzer &&\
rustup toolchain install stable
```

Install Lua and LSP

```bash
yay -S lua lua-language-server luarocks stylua
```

Install Jetbrains ToolBox

```bash
yay -S jetbrains-toolbox
```

Install `docker`

```bash
sudo pamac install docker &&\
sudo systemctl enable docker.service &&\
sudo systemctl start docker.service &&\
sudo gpasswd -a $USER docker
```

Docker Compose

```bash
yay -S docker-compose
```

Install gnome browser extention

```bash
yay -S chrome-gnome-shell
```

Install Spotify

```bash
flatpak install flathub com.spotify.Client
```

Install Discord

```bash
flatpak install flathub com.discordapp.Discord
```

## Windows

Install git

```pwsh
winget install Git.Git
```

Install Github cli

```pwsh
winget install Github.cli
```

Login to Github

```pwsh
gh auth login
```

Clone Dotfiles

```pwsh
gh repo clone hrozan/dotfiles
```

Install scoop

```pwsh
 Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

```pwsh
irm get.scoop.sh | iex
```

```pwsh
scoop bucket add main
```

```pwsh
scoop bucket add extras
```

Install gpg4win (Admin Required)

```pwsh
scoop install gpg4win
```

Install touch

```pwsh
scoop install touch
```

Install delta

```pwsh
scoop install delta
```

Install bat

```pwsh
scoop install bat
```

Install starship

```pwsh
scoop install starship
```

Install fzf

```pwsh
scoop install fzf
```

Install curlie

```pwsh
scoop install curlie
```

Install Powershell Nerd Icons

```pwsh
Install-Module Terminal-Icons
```

Install Powershell PSFzf

```pwsh
Install-Module PSFzf 
```

Copy Powershell config

```pwsh
cp .\dotfiles\powershell\Microsoft.PowerShell_profile.ps1 .\Documents\PowerShell\
```

Install node

```pwsh
winget install nodejs
```

Install nvm

```pwsh
winget install CoreyButler.NVMforWindows
```

Install Typescript LSP

```pwsh
sudo npm install -g typescript typescript-language-server
```

Instal Other LSPs

```pwsh
sudo npm install -g yaml-language-server vscode-langservers-extracted dockerfile-language-server-nodejs bash-language-server emmet-ls
```

Install rustup

```pwsh
scoop install rustup
```

Install LSP

```pwsh
scoop install rust-analyzer
```

Install mingw (for Treesitter)

```pwsh
scoop install gcc
```

Install neovim

```pwsh
winget install Neovim.Neovim
```

Install packer

```pwsh
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Clone configs

```pwsh
gh repo clone hrozan/nvim .\AppData\Local\nvim
```

Install plugins

```pwsh
nvim -c "PackerSync"
```

Install toolbox

```pwsh
winget install JetBrains.Toolbox
```

Install Windowns Subsystem for Linux - [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-manual)

Install [Docker](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module)
