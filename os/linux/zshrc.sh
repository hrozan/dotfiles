# Author: Higor Rozan

PATH=$HOME/.local/bin:$PATH
EDITOR=nvim
ZSH=$HOME/.oh-my-zsh/

eval "$(starship init zsh)"

alias g=git
alias n=npm
alias c=clear
alias vi=nvim
alias http=curlie
alias l='exa --long --header --git --icons'
alias la='exa --long --header --git --icons --all'
alias dc='docker-compose'

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
source /usr/share/z/z.sh
source /usr/share/nvm/init-nvm.sh

function reset-vi-plugins {
    rm -rf ./plugins
    vi -c "PackerSync"
}

