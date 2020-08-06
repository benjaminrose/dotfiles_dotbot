#Personal stuff before default stuff.
PROMPT='%n@%m:%~%# '

#And it looks like /usr/local/bin (homebrew) is first in the default $PATH.
export PATH=$HOME/.local/bin:$PATH.   #for pipx
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=$HOME/Dropbox/bin:$PATH  # my dropbox should be first in PATH
#set homebrew ruby to be the defualt for compiliers
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
#to get access to jekyll
export PATH=$HOME/.gem/ruby/2.6.0/bin:$PATH
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

# https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/
setopt NO_CASE_GLOB
setopt AUTO_CD
# CORRECT turns on spelling correction for commands, and the CORRECT_ALL option turns on spelling correction for all arguments.
setopt CORRECT
setopt CORECT_ALL


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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


alias lsa='ls -aF'
alias ls='ls -LGF' #I don't remember what L & G do, but F gets the trailing /'s
alias conda-update='conda env update -f environment.yaml && conda env export > environment.yaml.lock`
alias conda-new=`conda env create -f environment.yaml`
