
#upadte windows

#Change mode to developer

#Install package manager
https://github.com/microsoft/winget-cli/releases

#Setup insider build
https://github.com/whatever127/offlineinsiderenroll

# Windows Store
App Installer 

#Enable windows features
dism /online /Enable-Feature /FeatureName:TelnetClient /norestart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All. /norestart
dism.exe /online /enable-feature /featurename:HypervisorPlatform /all /norestart



<#Pagefile changes
$Pagefile = Get-WmiObject Win32_PagefileSetting | Where-Object {$_.name -eq "C:\pagefile.sys"}
$Pagefile.InitialSize = 40000
$Pagefile.MaximumSize = 80000
$Pagefile.put()
#>

#Remove Hibernation
powercfg.exe /hibernate off

<#Add portable apps to path
$env:Path += ";C:\Users\Henry\Dropbox\PortableApps" 
#>

#Winget
winget install JAMSoftware.TreeSizeFree --silent
winget install Canonical.Ubuntu --silent
winget install Microsoft.WindowsTerminalPreview --silent
winget install CodecGuide.K-LiteCodecPackMega --silent
winget install Amazon.Kindle --silent

# Development
winget install Amazon.AWSCLI --silent
winget install GnuWin32.Make --silent
winget install Docker.DockerDesktop --silent
winget install Notepad++.Notepad++ --silent
winget install Microsoft.VisualStudioCode --silent
winget install Git.Git --silent
winget install Microsoft.PowerToys --silent
winget install Typora.Typora --silent
winget install Microsoft.WindowsTerminal --silent
winget install Microsoft.PowerShell --silent


#Admin tools
winget install WinSCP.WinSCP --silent
winget install PuTTY.PuTTY --silent
winget install 7zip.7zip --silent
winget install Adobe.AdobeAcrobatReaderDC --silent
winget install Oracle.VirtualBox --silent
winget install Samsung.DeX --silent


# Internet
winget install Google.Chrome --silent
winget install Mozilla.Firefox --silent
winget install Microsoft.Edge --silent
winget install Dropbox.Dropbox --silent
winget install Google.DriveFileStream --silent
winget install Microsoft.Teams --silent
winget install SlackTechnologies.Slack
winget install Microsoft.Skype --silent

#Download applications
mkdir c:\installations
cd c:\installations

#Windows Subsystem for Linux
#https://docs.microsoft.com/en-us/windows/wsl/install-win10
Invoke-WebRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi
wsl_update_x64.msi


wsl --set-default-version 2

<# 
#Kaspersky
https://my.kaspersky.com/en

#Keepass
https://keepass.info/download.html

#Tagspaces
https://www.tagspaces.org/

#Gramerly
https://app.grammarly.com/

#Node.js 
https://phoenixnap.com/kb/install-node-js-npm-on-windows


#Terraform
https://www.terraform.io/downloads.html

#Packer
https://www.packer.io/downloads

#vagrant
https://www.vagrantup.com/downloads.html

#>


<#
#Linux
sudo apt-get install -y curl wget zip git htop ctop lynx build-essential net-tools bash-completion tree

#VIM
echo "set number" >> ~/.vimrc
echo "set cpoptions+=n" >> ~/.vimrc
echo "colorscheme desert" >> ~/.vimrc
echo "set cpoptions+=n" >> ~/.vimrc
echo "set autoindent" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set linebreak" >> ~/.vimrc
echo "set syntax enable" >> ~/.vimrc
echo "set wrap" >> ~/.vimrc
echo "set foldmethod=indent" >> ~/.vimrc



# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash
bash -c zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#>