<#
Run this as Admin on Powershell
Invoke-WebRequest https://raw.githubusercontent.com/h3nryza/windowsinstaller/README.md -OutFile windowsInstallserScript.ps1

WORK IN PROGRESS
#>



# Enabling windows Features
Telnet, WSL, VirtualMachinePlatform, Sandbox, HypervisorPlatform           
dism /online /Enable-Feature /FeatureName:TelnetClient /norestart          
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart      
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart      
dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All /norestart      
dism.exe /online /enable-feature /featurename:HypervisorPlatform /all /norestart      

# Power config changes
powercfg.exe /hibernate off   

<# Needs testing #>
# Download Winget
Invoke-WebRequest https://github.com/microsoft/winget-cli/releases/download/v0.1.42241-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle  -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundl
# Install Winget
Add-AppxPackage .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle -Confirm:$False

# Enable offline insider enroll
Invoke-WebRequest https://raw.githubusercontent.com/whatever127/offlineinsiderenroll/master/OfflineInsiderEnroll.cmd  -OutFile OfflineInsiderEnroll.cmd
# Install Winget
Start OfflineInsiderEnroll.cmd

<# All other Installs #>

# General
winget install JAMSoftware.TreeSizeFree --silent --force     
winget install CodecGuide.K-LiteCodecPackMega --silent --force   
winget install Amazon.Kindle --silent --force        

# Development 
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

# Admin tools
winget install WinSCP.WinSCP --silent       
winget install PuTTY.PuTTY --silent      
winget install 7zip.7zip --silent      
winget install Adobe.AdobeAcrobatReaderDC --silent      
winget install Oracle.VirtualBox --silent      

# Internet
winget install Google.Chrome      
winget install Mozilla.Firefox     
winget install Microsoft.Edge      
winget install Dropbox.Dropbox  
winget install Google.DriveFileStream       
winget install Microsoft.Teams     
winget install SlackTechnologies.Slack      
winget install Microsoft.Skype     


<# TODO

AWS CLI
Samsung Desk
## WSL2

Invoke-WebRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi      
.\wsl_update_x64.msi      
wsl --set-default-version 2      

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
"C:\Program Files\VcXsrv\xlaunch.exe -run config.xlaunch"      


## Last commands

### WSL2
About: https://docs.microsoft.com/en-us/windows/wsl/install-win10
Run: wsl --set-default-version 2

#>
