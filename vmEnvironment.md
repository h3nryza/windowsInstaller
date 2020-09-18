<#  
__Run this as Admin on Powershell__  
Invoke-WebRequest https://raw.githubusercontent.com/h3nryza/windowsinstaller/vmEnvironment.md -OutFile vmEnvironment.ps1  
#>

# Enabling windows Features
## Telnet, WSL, VirtualMachinePlatform, Sandbox, HypervisorPlatform           
dism /online /Enable-Feature /FeatureName:TelnetClient /norestart          
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart      
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart      
dism /online /Enable-Feature /FeatureName:"Containers-DisposableClientVM" -All /norestart      
dism.exe /online /enable-feature /featurename:HypervisorPlatform /all /norestart 

# __Might Require Restart__  

# Enablements
## Offline Insider
Invoke-WebRequest https://raw.githubusercontent.com/whatever127/offlineinsiderenroll/master/OfflineInsiderEnroll.cmd  -OutFile OfflineInsiderEnroll.cmd 

.\OfflineInsiderEnroll.cmd

## App Installer
Invoke-WebRequest https://github.com/microsoft/winget-cli/releases/download/v.0.2.2521-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle  -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle  

.\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle  

## Windows Terminal
Invoke-WebRequest https://github.com/microsoft/terminal/releases/download/v1.2.2381.0/Microsoft.WindowsTerminal_1.2.2381.0_8wekyb3d8bbwe.msixbundle  -OutFile Microsoft.WindowsTerminal_1.2.2381.0_8wekyb3d8bbwe.msixbundle  

.\Microsoft.WindowsTerminal_1.2.2381.0_8wekyb3d8bbwe.msixbundle  

## Ubuntu
Invoke-WebRequest https://aka.ms/wslubuntu2004  -OutFile ubuntu20.msi  

.\ubuntu20.msi  

# Setup your Linux Distro - wsl
Write-Host "Please setup distro then <ENTER>..."  
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")  

## WSL2
Invoke-WebRequest https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi  

msiexec.exe /I wsl_update_x64.msi /quiet  

wsl --set-default-version 2  

# Power config changes
powercfg.exe /hibernate off   

# General
winget install JAMSoftware.TreeSizeFree --silent --force      
winget install Amazon.Kindle --silent --force        

# Development 
winget install GnuWin32.Make --silent --force      
winget install Docker.DockerDesktop --silent      
winget install Notepad++.Notepad++ --silent      
winget install Microsoft.VisualStudioCode --silent      
winget install Git.Git --silent       
winget install Microsoft.PowerToys --silent       
winget install Typora.Typora --silent --force          
winget install Microsoft.PowerShell --silent     

# Admin tools
winget install WinSCP.WinSCP --silent       
winget install PuTTY.PuTTY --silent      
winget install 7zip.7zip --silent      
winget install Adobe.AdobeAcrobatReaderDC --silent       

# Internet
winget install Google.Chrome      
winget install Mozilla.Firefox     
winget install Microsoft.Edge      
winget install Dropbox.Dropbox  
winget install Google.DriveFileStream       
winget install Microsoft.Teams     
winget install SlackTechnologies.Slack      
winget install Microsoft.Skype     

  
<# 
------------------------ 
# Manual
## Keepass     
https://keepass.info/download.html      
## Tagspaces     
https://www.tagspaces.org/      
## Gramerly     
https://app.grammarly.com/      
## Node.js         
https://phoenixnap.com/kb/install-node-js-npm-on-windows
## Terraform     
https://www.terraform.io/downloads.html      
##  Packer         
https://www.packer.io/downloads      
## Kaspersky    
https://my.kaspersky.com/en
##  VCXSRV          
https://sourceforge.net/projects/vcxsrv/files/vcxsrv/      
https://techcommunity.microsoft.com/t5/windows-dev-appconsult/running-wsl-gui-apps-on-windows-10/ba-p/1493242      
## Run on startup     
"C:\Program Files\VcXsrv\xlaunch.exe -run config.xlaunch"      
#>
