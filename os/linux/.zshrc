eval "$(starship init zsh)"

# Enable Z
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# Enable Oh My ZSH
ZSH=$HOME/.oh-my-zsh/
plugins=(
  git
  gh
  tmux
  fzf-zsh-plugin
  node
  npm
  nvm
  yarn
  docker
  docker-compose
  github
  rust
)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add directories to path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Set default editor
export EDITOR='nvim'

# Set custom alias
alias l='exa -lh --git --icons'
alias ls='exa'
alias g='git'
alias n='npm'
alias vi='nvim'
alias vim='neovide'
alias dc='docker-compose'
alias http='curlie'

# Packages
alias packages-orphans-list='pacman -Qdt'
alias packages-orphans-remove='sudo pacman -Rsn $(pacman -Qdtq)'

# Node NVM
source /usr/share/nvm/init-nvm.sh
