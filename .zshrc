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

# export TERM=xterm-256color
# export ZSH_TMUX_AUTOSTART=true
# export ZSH_TMUX_AUTOSTART_ONCE=true
# export ZSH_TMUX_AUTOCONNECT=false

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git git-prompt vi-mode last-working-dir ssh-agent colored-man common-alias cp pip tmux z)
plugins=(git git-prompt vi-mode last-working-dir ssh-agent colored-man common-alias cp pip z history-substring-search) #tmux

source $ZSH/oh-my-zsh.sh
source $ZSH/opp_vim_text_objects/opp.zsh
source $ZSH/opp_vim_text_objects/opp/*.zsh

# Customize to your needs...
# remove hg prompt
#PROMPT='
#%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
#$(virtualenv_info)$ '
#
# PROMPT='
# %{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%} %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(prompt_git_info)
# $(virtualenv_info)$ '

#colors for less and man
#from http://muhas.ru/?p=181
# export LESS_TERMCAP_mb=$'\E[01;31m'       # начала мигающего
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # начало жирного текста
# export LESS_TERMCAP_me=$'\E[0m'           # окончание
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # начала текста в инфобоксе
# export LESS_TERMCAP_se=$'\E[0m'           # конец его
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # начало подчеркнутого
# export LESS_TERMCAP_ue=$'\E[0m'           # конец подчеркнутого

# no lag on normal / insert mode switch
# see http://dougblack.io/words/zsh-vi-mode.html
export KEYTIMEOUT=1

# tmux plugin aliases
# alias ta='tmux attach -t'
# alias ts='tmux new-session -s'
# alias tl='tmux list-sessions'
# alias tksv='tmux kill-server'
# alias tkss='tmux kill-session -t'

# z plugin - jump to most recent matching dir
# z foo         cd to most frecent dir matching foo
# z foo bar     cd to most frecent dir matching foo and bar
# z -r foo      cd to highest ranked dir matching foo
# z -t foo      cd to most recently accessed dir matching foo
# z -l foo      list all dirs matching foo (by frecency)

#cp plugin
#  copy with rsync, show progress

#common aliases (common-aliases plugin)
# ls, the common ones I use a lot shortened for rapid fire usage
# alias l='ls -lFh'     #size,show type,human readable
# alias la='ls -lAFh'   #long list,show almost all,show type,human readable
# alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
# alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
# alias ll='ls -l'      #long list
# alias ldot='ls -ld .*'
# alias lS='ls -1FSsh'
# alias lart='ls -1Fcart'
# alias lrt='ls -1Fcrt'

# alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file

# alias grep='grep --color'
# alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '

# alias t='tail -f'

# # because typing 'cd' is A LOT of work!!
# alias ..='cd ../'
# alias ...='cd ../../'
# alias ....='cd ../../../'
# alias .....='cd ../../../../'

# # Command line head / tail shortcuts
# alias -g H='| head'
# alias -g T='| tail'
# alias -g G='| grep'
# alias -g L="| less"
# alias -g M="| most"
# alias -g LL="2>&1 | less"
# alias -g CA="2>&1 | cat -A"
# alias -g NE="2> /dev/null"
# alias -g NUL="> /dev/null 2>&1"
# alias -g P="2>&1| pygmentize -l pytb"

# alias dud='du -d 1 -h'
# alias duf='du -sh *'
# alias fd='find . -type d -name'
# alias ff='find . -type f -name'

# alias h='history'
# alias hgrep="fc -El 0 | grep"
# alias help='man'
# alias p='ps -f'
# alias sortnr='sort -n -r'
# alias unexport='unset'

# alias whereami=display_info

# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# zsh is able to auto-do some kungfoo
# depends on the SUFFIX :)
if [ ${ZSH_VERSION//\./} -ge 420 ]; then
  # open browser on urls
  _browser_fts=(htm html de org net com at cx nl se dk dk php)
  for ft in $_browser_fts ; do alias -s $ft=$BROWSER ; done

  _editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
  for ft in $_editor_fts ; do alias -s $ft=$EDITOR ; done

  _image_fts=(jpg jpeg png gif mng tiff tif xpm)
  for ft in $_image_fts ; do alias -s $ft=$XIVIEWER; done

  _media_fts=(ape avi flv mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
  for ft in $_media_fts ; do alias -s $ft=mplayer ; done

  #read documents
  alias -s pdf=acroread
  alias -s ps=gv
  alias -s dvi=xdvi
  alias -s chm=xchm
  alias -s djvu=djview

  #list whats inside packed file
  alias -s zip="unzip -l"
  alias -s rar="unrar l"
  alias -s tar="tar tf"
  alias -s tar.gz="echo "
  alias -s ace="unace l"
fi


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

# Replaced with history-substring-search plugin
# http://unix.stackexchange.com/questions/16101/zsh-search-history-on-up-and-down-keys
# up-line-or-search-prefix () {
#   local CURSOR_before_search=$CURSOR
#   zle up-line-or-search "$LBUFFER"
#   CURSOR=$CURSOR_before_search
# }
# zle -N up-line-or-search-prefix
# down-line-or-search-prefix () {
#   local CURSOR_before_search=$CURSOR
#   zle down-line-or-search "$LBUFFER"
#   CURSOR=$CURSOR_before_search
# }
# zle -N down-line-or-search-prefix
## bindkey '^[[A' up-line-or-search-prefix
## bindkey '^[[B' down-line-or-search-prefix

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

# http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
# Ctrl-Z from vim to switch to sh and Ctrl-Z to go back
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
    zle redisplay
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# https://twitter.com/climagic/status/551435572490010624
# same can be done using VLC => vlc v4l2:///dev/video0
# Use your webcam and mplayer as a mirror with this function.
mirror(){ mplayer -vf mirror -v tv:// -tv device=/dev/video0:driver=v4l2; }

# added by travis gem
[ -f /home/seb/.travis/travis.sh ] && source /home/seb/.travis/travis.sh
# gvm
#[[ -s "/home/seb/.gvm/scripts/gvm" ]] && source "/home/seb/.gvm/scripts/gvm"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/web
source /usr/local/bin/virtualenvwrapper.sh

#export NVIM_TUI_ENABLE_TRUE_COLOR=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -l -g ""'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

source ~/.i3/keyboard-setup.sh

# vim as man pager
export MANPAGER="env MAN_PN=1 vim -M +MANPAGER -"
