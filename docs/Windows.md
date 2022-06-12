# Windows 

Install git
```
winget install Git.Git
```

Install Github cli
```
winget install Github.cli
```

Login to Github
```
gh auth login
```

Clone Dotfiles
```
gh repo clone hrozan/dotfiles
```

Install scoop
```
 Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

```
irm get.scoop.sh | iex
```

```
scoop bucket add main
```

```
scoop bucket add extras
```

Install gpg4win (Admin Required)
```
scoop install gpg4win
```

Install touch
```
scoop install touch
```

Install delta
```
scoop install delta
```

Install bat
```
scoop install bat
```

Install starship
```
scoop install starship
```

Install fzf
```
scoop install fzf
```

Install curlie
```
scoop install curlie
```

Install Powershell Nerd Icons
```
Install-Module Terminal-Icons
```

Install Powershell PSFzf 
```
Install-Module PSFzf 
```

Copy Powershell config
```
cp .\dotfiles\powershell\Microsoft.PowerShell_profile.ps1 .\Documents\PowerShell\
```

### Node

Install node
```
winget install nodejs
```

Install nvm
```
winget install CoreyButler.NVMforWindows
```

Install yarn
```
scoop install yarn
```

Install Typescript LSP
```
sudo npm install -g typescript typescript-language-server
```

Instal Other LSPs
```
sudo npm install -g yaml-language-server vscode-langservers-extracted dockerfile-language-server-nodejs bash-language-server emmet-ls
```

### Rust

Install rustup
```
scoop install rustup
```

Install LSP
```
scoop install rust-analyzer
```

### IDEs

#### Neovim

Install mingw (for Treesitter)
```
scoop install gcc
```

Install neovim
```
winget install Neovim.Neovim
```

Install packer
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Clone configs
```
gh repo clone hrozan/nvim .\AppData\Local\nvim
```

Install plugins
```
nvim -c "PackerSync"
```

#### Jetbrains Toolbox

Install toolbox
```
winget install JetBrains.Toolbox
```

#### WSL

Install Windowns Subsystem for Linux - [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-manual)

### Docker

Install [Docker](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module)
