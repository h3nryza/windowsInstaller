# How to setup a new laptop

- Update Windows     
- Enable developer mode     
- Install package manager or from windows store make sure App Installer is installed:      
  - https://github.com/microsoft/winget-cli/releases     
- Enable insider builds offline     
  - https://github.com/whatever127/offlineinsiderenroll     
- Windows subsystem forlinux (currently fails with winget)
  - https://docs.microsoft.com/en-us/windows/wsl/install-manual#downloading-distros
- Install office      
_____________________________________
 
## Enabling windows Features
Telnet, WSL, VirtualMachinePlatform, Sandbox, HypervisorPlatform           
```
dism /online /Enable-Feature /FeatureName:TelnetClient /norestart          
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart      
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart      
dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" /all /norestart      
dism /online /enable-feature /featurename:HypervisorPlatform /all /norestart
bcdedit /set hypervisorlaunchtype auto
```

## Power config changes
```powercfg /hibernate off```
_____________________________________

## These fail on winget
- AWS CLI
  - Command: winget install Amazon.AWSCLI --silent
  - Location: https://awscli.amazonaws.com/AWSCLIV2.msi.
- Samsung Dex
  - command: winget install Samsung.DeX --silent --force    
  - Location: https://www.samsung.com/us/explore/dex/

## Winget automated installs

### General

```
winget install JAMSoftware.TreeSizeFree --silent      
winget install CodecGuide.K-LiteCodecPackMega --silent      
winget install Amazon.Kindle --silent      
```

###  Development

```
winget install Canonical.Ubuntu --silent      
winget install Amazon.AWSCLI --silent      
winget install --id=Microsoft.WindowsTerminal -e      
winget install GnuWin32.Make --silent --force      
winget install Docker.DockerDesktop --silent      
winget install Notepad++.Notepad++ --silent      
winget install Microsoft.VisualStudioCode --silent      
winget install Git.Git --silent       
winget install Microsoft.PowerToys --silent       
winget install Typora.Typora --silent --force      
winget install Microsoft.WindowsTerminal --silent      
winget install Microsoft.PowerShell --silent      
```

### Admin tools

```
winget install WinSCP.WinSCP --silent       
winget install PuTTY.PuTTY --silent      
winget install 7zip.7zip --silent      
winget install Adobe.AdobeAcrobatReaderDC --silent      
winget install Oracle.VirtualBox --silent      
```

###  Internet

```
winget install Google.Chrome --silent      
winget install Mozilla.Firefox --silent      
winget install Microsoft.Edge --silent      
winget install Dropbox.Dropbox --silent      
winget install Google.DriveFileStream --silent      
winget install Microsoft.Teams --silent      
winget install SlackTechnologies.Slack      
winget install Microsoft.Skype --silent      
```


## WSL2

```
Invoke-WebRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi      
.\wsl_update_x64.msi      
wsl --set-default-version 2      
```
___________________________________

## Manual

### Keepass     
https://keepass.info/download.html      

### Tagspaces     
https://www.tagspaces.org/      

### Gramerly     
https://app.grammarly.com/      

### Node.js         
https://phoenixnap.com/kb/install-node-js-npm-on-windows

### Terraform     
https://www.terraform.io/downloads.html      

###  Packer         
https://www.packer.io/downloads      

###  vagrant    
https://www.vagrantup.com/downloads.html   

### Kaspersky    
https://my.kaspersky.com/en

###  VCXSRV          
https://sourceforge.net/projects/vcxsrv/files/vcxsrv/      
https://techcommunity.microsoft.com/t5/windows-dev-appconsult/running-wsl-gui-apps-on-windows-10/ba-p/1493242      

### Run on startup     
```C:\Program Files\VcXsrv\xlaunch.exe -run config.xlaunch```      


## Last commands


































