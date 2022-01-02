# nvim-settings

## Table of Contents
* [Enable WSL - Windows Subsystem for Linux](#enable_wsl)
* [Install WSL2 - including Linux distro install](#install_wsl2)
* [Upgrade to WSL2 from WSL with a Linux Distro installed](#upgrade_wsl1_to_wsl2)
* [Setup of neovim](#nvim_setup)
* [Setup of the terminal](#terminal_setup)
* [Setup sources](#setup_sources)


### Enable WSL <a name="enable_wsl"></a>
1. Open Windows Powershell as an administrator
2. Run the following in the prompt
```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
``` 

### Install WSL2 - including Linux Distro install <a name="install_wsl2"></a>
1. Check if your system has a Windows 10 version 2004 or higher
> Type "winver" on the start menu and check for the requirements
2. Type "Turn Windows feature on or off" on the start menu
3. Enable (Virtual Machine Platform) and (Windows Subsystem for Linux)
4. Reboot system
5. Install "Ubuntu" from the Microsoft store which then displays an error with a link
> Link: https://aka.ms/wsl2kernel
6. Download the package and you should see its name as "wsl_update_x64.msi"
7. Following the instructions on the popup, install the software
> **Requires administrator access**
8. Relaunch Ubuntu and follow the instructions on Ubuntu

### Upgrade to WSL2 from WSL with a linux distro installed <a name="upgrade_wsl1_to_wsl2"></a>
1. Open Powershell and check the WSL Version
```
wsl -l -v
```
> You should see your linux distro's name and 1 as its version
2. Set the version of your Linux distro to 2
```
wsl --set-version <NAME-OF-LINUX-DISTRO> 2 
```

### Setup of neovim <a name="nvim_setup"></a>
For the following, you need to have a Linux Distro - Ubuntu - installed

1. Launch Ubuntu and create a UNIX username and password
2. Update and upgrade Ubuntu
```
sudo apt update
sudo apt upgrade
```
3. Install neovim with admin rights
```
sudo apt install neovim
```
Install latest unstable version of neovim
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update $ sudo apt-get install neovim
```
4. Run one of the two to return your home directory
```
cd
cd /home/<UNIX-USERNAME>
```
5. Clone this directory
```
git clone https://github.com/vicinity123/.config.git
```
6. Install [vim plug](https://github.com/junegunn/vim-plug)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
8. Change directory into the plugins folder
```
cd ~/.config/nvim/vim-plug/
```
8. Go into the file and install the plugins
```
nvim plugins.vim
(Inside the file)
:PlugInstall
:PlugUpdate
:PlugClean
```
9. Setup COC for neovim
```
cd ~/.config/nvim/autoload/plugged/coc.nvim
npm install -g yarn
yarn install
yarn build
``` 
 
Install [COC](https://github.com/neoclide/coc.nvim) for different languages
```
nvim
:CocInstall coc-pyright coc-html coc-css coc-tsserver coc-json
```


### Setup of the terminal <a name="terminal_setup"></a>

#### Node JS and NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```
Close the terminal and relaunch it for NVM to start working
```
nvm install --lts
```

#### Git install & setup
```
sudo apt install git
git --version
```
```
git config --global user.name <GITHUB-USERNAME>
git config --global user.email <GITHUB-EMAIL>
```

### Setup sources <a name="setup_sources"></a>
* [Fireship WSL setup](https://fireship.io/lessons/windows-10-for-web-dev/)
* [Chris at machine website series](https://www.chrisatmachine.com/Neovim/01-vim-plug/)
