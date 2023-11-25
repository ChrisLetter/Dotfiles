export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pure
ZSH_THEME=""
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:git:stash show yes

# Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Loading private config
export PRIVATE_CONFIG="/home/chris/.privaterc"
if [ -L "$PRIVATE_CONFIG" ]; then
  source "$PRIVATE_CONFIG"
fi

# Starting on code folder when new a new terminal is open
export START="/home/chris/code"
if [ $PWD == $HOME && -d "$START" ]; then
  cd "$START"
fi

# Aliases for navigation and file management
alias la='ls -A'
alias l='ls'
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias size='du -h --max-depth=1 ./'

# Aliases for git
alias gs="git status"
alias gaa="git add ."
alias gcmsg="git commit -m"
alias gco="git checkout"
alias pull="git pull"
alias push="git push"
alias master="git checkout master"
alias main="git checkout main"
alias log="git log --pretty=format:\"%C(green)%h%Creset %C(yellow)%ad %C(white)~ %an ~ %C(cyan)%s%Creset\" --date=human -n 8"
alias drop="git stash && git stash dop"
alias amend="git add . && git commit --amend --no-edit"

# Aliases for tmux
alias tm="tmux"
alias tmls="tmux ls"
alias tmn="tmux new -s"
alias tmas="tmux attach-session -t"
alias tmks="tmux kill-session -t"
alias tmksa="tmux kill-session -a"

#Aliases for npm and rush
alias start="npm run start"
alias test="npm run test"
alias ru="rush update"
alias rupf="rush update --purge --full"

# Aliases for nvim
alias vim="nvim"
