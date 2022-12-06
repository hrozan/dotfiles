# Manjaro

Install yay

```bash
pamac install yay
```

Install tools

```bash
yay -S kitty zsh zsh-completions starship fzf exa bat curlie z git-delta github-cli 1password chrome-gnome-shell 
```

Login Github

```bash
gh auth login
```

Clone dotfiles

```bash
gh repo clone dotfiles $HOME/.dotfiles
```

Install oh-my-zsh and plugins

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&\
git clone https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin &&\
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Install node and tools

```bash
yay -S nodejs npm nvm &&\
sudo npm install -g typescript typescript-language-server yaml-language-server bash-language-server vscode-langservers-extracted &&\
sudo npm install -g prettier
```

Install rust and tools

```bash
yay -S rustup rust-analyzer &&\
rustup toolchain install stable
```

Install Lua and tools

```bash
yay -S lua lua-language-server luarocks stylua
```

Install docker and tools

```bash
yay -S docker docker-compose
```

```bash
sudo systemctl enable docker.service &&\
```

```bash
sudo systemctl start docker.service &&\
```

```bash
sudo gpasswd -a $USER docker
```
