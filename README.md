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
1. Open Powershell and type the following command
```
wsl -l -v
```
> You should see your linux distro's name and 1 as its version
2. Type the following command to upgrade to WSL2
```
wsl --set-version <NAME-OF-LINUX-DISTRO> 2 
```

### Setup of neovim <a name="nvim_setup"></a>
For the following, you need to have a Linux Distro - Ubuntu - installed

1. Launch Ubuntu and create a UNIX username and password
2. Run the following to update and upgrade Ubuntu
```
sudo apt update
sudo apt upgrade
```
3. To install neovim, run the following
```
sudo apt install neovim
```
4. Run one of the two to return your home directory
```
cd
cd /home/<UNIX-USERNAME>
```
5. Clone this in the home directory
```
git clone https://github.com/vicinity123/.config.git
```
6. Change directory into the plugins folder
```
cd ~/.config/nvim/vim-plug/
```
7. Go into the file and install the plugins
```
nvim plugins.vim
(Inside the file)
:PlugInstall
:PlugClean
:PlugUpdate
```

### Setup of the terminal <a name="terminal_setup"></a>
#### Zsh theme: RobbyRussell
```
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get install fonts-powerline
```
Modified theme: modified_russell.zsh_theme. Edit the zshrc file for the theme parameter to "modified_russell"

#### Node JS and NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```
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
