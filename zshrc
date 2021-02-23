#.zshrc - Ben's ZSH Configuration
# * Shell Settings
# * PATH
# * Aliases
# * Others


# Shell Settings 

PROMPT='%(?.%F{green}√.%F{red}?)%f %n@%m: %~%# '

#https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/
setopt NO_CASE_GLOB
setopt AUTO_CD
#CORRECT turns on spelling correction for commands, and the CORRECT_ALL option turns on spelling correction for all arguments.
setopt CORRECT
setopt CORRECT_ALL


# Update PATH

#set homebrew ruby to be the defualt for compiliers
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
#to get access to jekyll
#export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
#export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
#personal paths
#And it looks like /usr/local/bin (homebrew) is first in the default $PATH.
export PATH="$HOME/.local/bin:$PATH "  #for pipx
export PATH="$HOME/.dotfile/bin:$PATH " # my dropbox should be first in PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/benrose/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/benrose/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/benrose/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/benrose/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#https://github.com/conda/conda/issues/7031 - a zsh and conda env varriable clash
# alias conda-act="conda activate some_env && export HOST=$(hostname)"
function cactivate {
    conda activate "$@" && export HOST=$(hostname)
}
function cdeactivate {
    conda deactivate && export HOST=$(hostname)
}


# Add Alias

alias lsa='ls -aF'
alias ls='ls -LGF' #I don't remember what L & G do, but F gets the trailing /'s
alias conda-update='conda env update -f environment.yaml && conda env export > environment.yaml.lock'
alias conda-new='conda env create -f environment.yaml'
alias glog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gss="git status --short"
alias ga="git add"
alias brew-nightly="brew update"
alias brew-check="brew outdated"
alias brew-new="brew upgrade"


# Others
#configure bat (because the config file is not working)
export BAT_PAGER="less -R"
export BAT_THEME="Solarized (light)"

#Automatic iTerm2 profile switching
function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Hotkey Window"; fi # if you have trouble with this, change
                                                      # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}
function colorssh() {
  tabc SSH
  ssh $*
  tabc
}
function colorssh() {
    if [[ -n "$ITERM_SESSION_ID" ]]; then
        trap "tabc" INT EXIT
        # needs to use "duke" or "midway" since it only sees what is typed at the termianl and does not read .ssh/config
        if [[ "$*" =~ "duke" ]]; then
            tabc Duke
        elif [[ "$*" =~ "cosmo" ]]; then
            tabc Duke 
        elif [[ "$*" =~ "midway" ]]; then
            tabc Midway 
        else
            tabc SSH
        fi
    fi
    ssh $*
}
alias ssh="colorssh"

# tmux, saved sessions
# http://ttt.bartificer.net/book.html#ttt40
alias topterm="\
  tmux a -t topterm \
  || \
  tmux new -s topterm \; \
    split-window top \; \
    select-pane -t 0"

function tmux-test(){
    tmux a -t topterm || \
    tmux new -s topterm \; \
    split-window top \; \
    select-pane -t 0
}
