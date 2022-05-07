eval "$(starship init zsh)"

# Tmux
ZSH_TMUX_AUTOSTART=true

# Enable Oh My ZSH
ZSH=$HOME/.oh-my-zsh/
plugins=(
  tmux
  archlinux
  fzf-zsh-plugin
  node
  npm
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
alias g='git'
alias vi='nvim'
alias http='curlie'
alias l='exa'
alias ls='exa'
alias la='exa -lh --git --icons -a'
# Packages
alias packages-orphans-list='pacman -Qdt'
alias packages-orphans-remove='sudo pacman -Rsn $(pacman -Qdtq)'

# Node NVM
source /usr/share/nvm/init-nvm.sh

# Bat
export BAT_THEME="TwoDark"
