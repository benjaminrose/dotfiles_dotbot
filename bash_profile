#move homebrew (/usr/local/bin) and Dropbox in front of STScI defaults
export PATH="/usr/local/bin:/Users/brose/Dropbox/bin:/sw/lib/perl5/ExtUtils:/sw/bin:/sw/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/opt/X11/bin"
# added by Miniconda3 installer
# export PATH="/Users/brose/miniconda3/bin:$PATH"
export PATH=$PATH:"/Users/brose/miniconda3/bin"
export PATH="$HOME/.poetry/bin:$PATH"
# Created by `userpath` on 2020-02-24 18:08:49
export PATH="$PATH:/Users/brose/.local/bin"

#homebrew ruby stuff.
#https://jekyllrb.com/docs/installation/macos/#install-jekyll
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"   # jekyll

# Python
########
# With pyenv and pyenv-virtualenv installed via homebrew
# This allows for the proper activation of virtual enviornments
# https://github.com/pyenv/pyenv-virtualenv#installing-with-homebrew-for-macos-users
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Science
#########
# https://github.com/cconroy20/fsps/blob/master/doc/INSTALL
export SPS_HOME=$HOME'/bin/fsps/'
# https://github.com/kbarbary/sfdmap
export SFD_DIR=$HOME'/data/sfddata/'


# Prompt
#########

## git-prompt, https://github.com/magicmonty/bash-git-prompt
# install via brew install bash-git-prompt
# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=0

# GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
# GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules

# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
# GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

# as last entry source the gitprompt script
# GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
# GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
GIT_PROMPT_THEME=Solarized_UserHost # use theme optimized for solarized color scheme
# GIT_PROMPT_THEME=Solarized

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi



# Alias
########

## General
alias ls='ls -GF'

## Stollen from ZSH 
export GIT_BRANCH="git rev-parse --abbrev-ref HEAD"
alias gst='git status'  # I don't want to over-write ghostscript
alias gss='git status --short'
alias glog="git log --oneline --decorate --color --graph"
alias gloga="git log --oneline --decorate --color --graph --all"
alias ga="git add"
alias gaa="git add --all"
alias gco="git commit"
alias gca="git commit --all"
alias gcm="git commit -m"
alias gp="git push"
#alias ggpush="git push origin $GIT_BRANCH
alias ggpush="git push origin $(current_branch)"

# alias python="python3"
# alias py="usr/local/bin/python3"
alias testcode="pytest -v -rx --cov-config=.coveragerc --cov --runxfail"
alias py="ipython3"
alias astro="/Users/brose/miniconda3/bin/python3"
alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias s.="sublime ."
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias dotgit='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# https://medium.com/@tashian/print-out-your-code-on-paper-7c760a376bca
# https://kb.iu.edu/d/afyk
alias printcode='enscript --color --line-numbers -Epython --highlight=python -2r -poutput.ps '
# alias ds9='/Applications/SAOImageDS9.app/Contents/MacOS/ds9'
clear
# . /Users/brose/miniconda3/etc/profile.d/conda.sh  # commented out by conda initialize


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

