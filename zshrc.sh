# Author: Higor Rozan

EDITOR=nvim

# Alias
alias g=git
alias n=npm
alias vi=nvim
alias gs='g s'
alias cat='batcat'
alias l='exa --long --header --icons'
alias la='exa --long --header --icons --all'
alias lg=lazygit
alias lad=lazydocker

export PATH=$PATH:$HOME/.local/bin/

# Starship
eval "$(starship init zsh)"

# Oh-my-zsh
ZSH=$HOME/.oh-my-zsh/
plugins=(
  1password
	git
  zsh-z
	gh
	fzf-zsh-plugin
	zsh-syntax-highlighting
	node
	npm
	nvm
	docker
	docker-compose
	github
	golang
  gcloud
  aws
)
source $ZSH/oh-my-zsh.sh

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)