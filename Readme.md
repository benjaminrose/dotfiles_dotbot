# Dotfiles

To install: after cloning this repository to a new system (location agnostic):

1. run `install` to automatically set up the environment with help from [dotobt](https://github.com/anishathalye/dotbot/).  
2. Download `ssh` config-file from my secret gist and put in `.ssh/config`. (REQUIRES 1Password that is installed in the next step.)
3. If you want to also install applications, automatic install only "tested" on my personally managed Mac, run `install-apps`.

Below is my full workflow to get a new Mac up and running.


## Getting Started

* Set up Mac regarding startup wizard. Migrate or start as new.
* Make sure iCloud Documents and Desktop is syncing.


## More info regarding Dotfile

In order to keep ssh-connection ports mildly private, my `~/.ssh/config` file is stored in a secret gist connected to my GitHub account. (Sadly a URL reveals the content to anyone. Maybe I should move it to Notion or some other location.)

* example of someone using this method - https://github.com/anishathalye/dotfiles
* write up of method - https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/
* Dotbot - https://github.com/anishathalye/dotbot/
* How Github uses `dotfiles` repos, specifically for Codespaces - https://help.github.com/en/github/developing-online-with-codespaces/personalizing-codespaces-for-your-account
* Think about adding https://github.com/sobolevn/dotbot-brewfile, and maybe other plugins.


## Install apps

I have a script in `dotfiles/install-apps`. This installs:
    
* Homebrew
* homebrew, cask  & Mac AppStore apps
* black & pytest via pipx


### Potential `brewfile` issues

If `miniconda` is having issues, get the full installation instructions can be found at https://docs.conda.io/en/latest/miniconda.html. In short `wget` the appropriate script and run the install script.

* https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
* https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh


### Set up iTerm and Alfred

The preferences for these applications are installed `~/Documents/2 Areas/P - Computing/application preferences/`


## SSH keys (& config?)

https://www.bartbusschots.ie/s/2015/03/29/taming-the-terminal-part-30-of-n-sshing-more-securely/

- [ ] Generate a new rsa key with `ssh-keygen -t rsa`.
- [ ] Save password and copy of key to 1Password. 
- [ ] Upload the public key to a server:
```shell
curl -L https://raw.githubusercontent.com/beautifulcode/ssh-copy-id-for-OSX/master/install.sh | sh
ssh-copy-id user@computer
```
- [ ] Add the key to ssh agent.
```bash
ssh-add
```
or
```bash
ssh-add -a ~/some_ssh_identity_file
```
- [ ] Check status of `ssh-agent` with `ssh-add -l`


## MacOS setting to change

Hoping to make this a script.

* Safari 

## Other apps or Files?

## Fonts

Homebrew downloaded some. I also usually create a favorites folder with:

* one
* other
