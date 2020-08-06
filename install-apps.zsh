#!/usr/bin/env bash

# Installs applications, predominatly via homebrew.
# Written without gaurding and assumes a lot.
# If setting up a non-personal-computer or non-mac, use as a guide rather than a build script.


# sign into icloud and mac app store
# This allows for
echo "Are you signed into the iCloud and the Mac App Store?"
read myvariable


# Install Homebrew
# instructions via https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Use bundle to install my pre-defined homebrew apps and related content.
brew bundle --file ~/brewfile


# Install pipx appliations
pipx install black
pipx install pytest


# Install cloud storage files
echo "Are your cloud storage files installing: Dropbox, iCloud, Google Drive?"
