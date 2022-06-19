# Author: Higor Rozan

# Setup Environment Variables 
PATH=$HOME/.local/bin:$PATH
EDITOR=nvim

# Enable Starship
eval "$(starship init zsh)"

# Enable Z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# Enable Oh My ZSH
ZSH=$HOME/.oh-my-zsh/
plugins=(
  git
  gh
  fzf-zsh-plugin
  node
  npm
  nvm
  docker
  docker-compose
  github
  rust
)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Alias
alias l='exa --long --header --git --icons'
alias g='git'
alias n='npm'
alias c='clear'
alias vi='nvim'
alias la='exa --long --header --git --icons --all'
alias dc='docker-compose'
alias http='curlie'
alias packages-orphans-list='pacman -Qdt'
alias packages-orphans-remove='sudo pacman -Rsn $(pacman -Qdtq)'

# Enable Node Version Manager
source /usr/share/nvm/init-nvm.sh

# Auxiliar Functions

function vi-plugins-reset {
    rm -rf ./plugins
    vi -c "PackerSync"
}

