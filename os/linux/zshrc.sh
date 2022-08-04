# Author: Higor Rozan

PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
EDITOR=nvim
ZSH=$HOME/.oh-my-zsh/
plugins=(
  git
  gh
  fzf-zsh-plugin
  zsh-syntax-highlighting
  node
  npm
  nvm
  docker
  docker-compose
  github
  rust
)

eval "$(starship init zsh)"
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

alias g=git
alias n=npm
alias y=yarn
alias c=clear
alias vi=nvim
alias http=curlie
alias vim=neovide
alias cat='bat -p --theme=OneHalfDark'
alias l='exa --long --header --git --icons'
alias la='exa --long --header --git --icons --all'
alias dc='docker-compose'

