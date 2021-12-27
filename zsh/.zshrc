# Enable Powerlevel10k instant prompt. 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add bin 
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Setup Oh My ZSH
export ZSH="/home/hrozan/.oh-my-zsh"
# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
# Plugins
plugins=(
    git
    git-extras
    node
    npm
    cargo
    rust
    docker
    zsh-syntax-highlighting
)
# Load
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR='nvim'

# Alias
alias vi='nvim'
alias viconf='nvim ~/.config/nvim/lua/custom/init.lua'
alias viconf-chad='nvim ~/.config/nvim/lua/custom/chadrc.lua'
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias ls='exa'
alias ll='exa -lh --git'
alias la='exa -lh --git -a '
alias packages-orphans-list='pacman -Qdt'
alias packages-orphans-remove='pacman -Rsn $(pacman -Qdtq)'

# Node NVM
source /usr/share/nvm/init-nvm.sh

# Go
export PATH=$PATH:$HOME/go/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
