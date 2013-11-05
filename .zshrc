# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="prose"
#export ZSH_THEME="robbyrussell"
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode last-working-dir)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# remove hg prompt
#PROMPT='
#%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
#$(virtualenv_info)$ '
#
#colors for less and man
#from http://muhas.ru/?p=181
export LESS_TERMCAP_mb=$'\E[01;31m'       # начала мигающего
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # начало жирного текста
export LESS_TERMCAP_me=$'\E[0m'           # окончание
export LESS_TERMCAP_so=$'\E[38;5;246m'    # начала текста в инфобоксе
export LESS_TERMCAP_se=$'\E[0m'           # конец его
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # начало подчеркнутого
export LESS_TERMCAP_ue=$'\E[0m'           # конец подчеркнутого

# no lag on normal / insert mode switch
# see http://dougblack.io/words/zsh-vi-mode.html
export KEYTIMEOUT=1

#git aliases (git plugin)
# g='git'
# gst='git status'
# gl='git pull'
# gco='git checkout'
# gcm='git checkout master'
# gb='git branch'
# ga='git add'
#
# gup='git fetch && git rebase'
# gp='git push'
# gc='git commit -v'
# gca='git commit -v -a'
# gba='git branch -a'
# gcount='git shortlog -sn'
# gcp='git cherry-pick'
# glg='git log --stat --max-count=5'
# glgg='git log --graph --max-count=5'
# gss='git status -s'
# gm='git merge'
# grh='git reset HEAD'
# grhh='git reset HEAD --hard'
# ggpull='git pull origin $(current_branch)'
# ggpush='git push origin $(current_branch)'
# ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias -g puc='phpunit --colors'
alias gpoh='git push origin HEAD'
# View abbreviated SHA, description, history graph, time and author
alias glog='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --'

# Ctrl-R to start incremental history search
bindkey "^R" history-incremental-search-backward

# http://unix.stackexchange.com/questions/16101/zsh-search-history-on-up-and-down-keys
up-line-or-search-prefix () {
  local CURSOR_before_search=$CURSOR
  zle up-line-or-search "$LBUFFER"
  CURSOR=$CURSOR_before_search
}
zle -N up-line-or-search-prefix
down-line-or-search-prefix () {
  local CURSOR_before_search=$CURSOR
  zle down-line-or-search "$LBUFFER"
  CURSOR=$CURSOR_before_search
}
zle -N down-line-or-search-prefix

##up-line-or-history-beginning-search () {
  ##if [[ -n $PREBUFFER ]]; then
    ##zle up-line-or-history
  ##else
    ##zle history-beginning-search-backward
  ##fi
##}
##zle -N up-line-or-history-beginning-search

bindkey '^[[A' up-line-or-search-prefix
bindkey '^[[B' down-line-or-search-prefix
#bindkey '^[[B' down-line-or-search

# http://stackoverflow.com/questions/8343166/filemanager-for-vim
vc () 
{ 
    local TARGET='';

    [ -z "$@" ] && TARGET=. || TARGET="$@";
    vim \
    -c "set cursorline" \
    -c vsplit \
    -c "normal gh" \
    -c "let &titlestring=\"netrw\"" \
    -c "set acd" "$TARGET";

    return 0
}
