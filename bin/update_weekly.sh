#! /bin/zsh
# update_weekly.sh
# This is my weekly update of terminal stuff

#https://www.davidpashley.com/articles/writing-robust-shell-scripts/
set -o errexit
set -o pipefail
set -o nounset


# Homebrew

#todo: what should be done about the outputs of brew update?
brew update
# not helpful in a script, but is nice to use if this script is used as a checklist
# brew outdated
# This updates brew, if needed, and then upgrades all packages.
# It will also up some cask-applications:
# Casks with `auto_updates` or `version :latest` will not be upgraded
# pass `--greedy` to upgrade them.
brew upgrade


# Mac App Store

mas upgrade


# Pipx

# pipx libraries seem to get unlinked. This upgrades the tools and fixes the dependacies.
pipx reinstall-all


# Anaconda

conda update -n sci --all --yes


# MacOS, general

softwareupdate --install --all --restart
