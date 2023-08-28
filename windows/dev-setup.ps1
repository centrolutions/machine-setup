# Get Windows Ready
"Install Chocolatey..."
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

"Install Scoop for later..."
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

"Install winget for later..."
choco install winget -y

"Install and run WinDebloat..."
choco install dotnet-7.0-sdk -y
Import-Module $env:ChocolateyInstall/helpers/chocolateyProfile.psm1
refreshenv
dotnet tool install WinDebloat -g
refreshenv
WinDebloat --include-all

# Development Tools
"Install Notepad++..."
choco install Notepadplusplus -y

"Install Git for Windows..."
choco install git.install -y
refreshenv

"Install GitHub Desktop..."
choco install github-desktop -y

"Install Visual Studio 2022 Enterprise..."
choco install visualstudio2022enterprise -y
choco install visualstudio2022-workload-manageddesktop -y
choco install visualstudio2022-workload-netweb -y
choco install visualstudio2022-workload-webbuildtools -y
choco install visualstudio2022-workload-node -y
choco install visualstudio2022-workload-nodebuildtools -y

"Install NodeJS..."
choco install nodejs -y
refreshenv

"Install VSCode..."
choco install vscode -y
choco install vscode-xmltools -y
choco install vscode-yaml -y

"Install LINQPad..."
choco install linqpad6 -y

"Install Windows Terminal..."
winget install Microsoft.WindowsTerminal

"Install SQL Server..."
choco install sql-server-express -y
choco install sql-server-management-studio -y

"Install Docker..."
choco install docker-desktop -y

"Install Fiddler..."
choco install fiddler -y

"Install Papercut..."
choco install papercut -y


# Other Applications
"Install Powershell..."
choco install pwsh -y

"Install BitWarden..."
choco install bitwarden -y
choco install bitwarden-edge -y

"Install FileZilla Client..."
choco install filezilla -y

"Install Audacity..."
choco install audacity -y

"Install Text Grab..."
scoop bucket add extras
scoop install text-grab

"Install Ditto..."
choco install ditto -y