# Enable Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Oh My ZSH
ZSH=/usr/share/oh-my-zsh/
plugins=(
  archlinux
  golang
  node
  npm
  yarn
  docker
  docker-compose
  github
)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add directories to path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set default editor
export EDITOR='nvim'

# Bat
export BAT_THEME="TwoDark"

# Set custom alias
alias vi='nvim'
alias viconf='nvim ~/.config/nvim/lua/custom/init.lua'
alias viconf-chad='nvim ~/.config/nvim/lua/custom/chadrc.lua'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
# Change ls to exa
alias ls='exa'
alias ll='exa -lh --git'
alias la='exa -lh --git -a '
# Packages
alias packages-orphans-list='pacman -Qdt'
alias packages-orphans-remove='sudo pacman -Rsn $(pacman -Qdtq)'

# Node NVM
source /usr/share/nvm/init-nvm.sh

