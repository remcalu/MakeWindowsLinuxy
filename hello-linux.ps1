# Set up chocolatey
Write-Host "Setting up chocolatey..." -ForegroundColor Green
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Set up git bash
Write-Host "Setting up git bash..." -ForegroundColor Green
choco install git.install --params "/GitAndUnixToolsOnPath /NoGitLfs /SChannel /NoAutoCrlf /WindowsTerminal" -y

# Set up python3
Write-Host "Setting up python3..." -ForegroundColor Green
choco install python3 -y

# Set up sudo
Write-Host "Setting up gsudo..." -ForegroundColor Green
choco install gsudo -y

# Set up zsh
Write-Host "Setting up zsh..." -ForegroundColor Green

########################################################################

# Moving files from the etc directory
xcopy "zsh-files\etc\zsh" "C:\Program Files\Git\etc" /I

# Moving files from the usr\bin directory
xcopy "zsh-files\usr\bin\msys-zsh-5.9.dll" "C:\Program Files\Git\usr\bin" /I
xcopy "zsh-files\usr\bin\zsh-5.9.exe" "C:\Program Files\Git\usr\bin" /I
xcopy "zsh-files\usr\bin\zsh.exe" "C:\Program Files\Git\usr\bin" /I

# Moving files from the usr\lib directory
xcopy "zsh-files\usr\lib\zsh" "C:\Program Files\Git\usr\lib" /I

# Moving files from the usr\share\licenses
xcopy "zsh-files\usr\share\licenses\zsh" "C:\Program Files\Git\usr\share\licenses" /I

# Moving files from the usr\man
xcopy "zsh-files\usr\share\man" "C:\Program Files\Git\usr\share" /I

# Moving files from the usr\share
xcopy "zsh-files\usr\share\zsh" "C:\Program Files\Git\usr\share" /I

########################################################################
# Launch git bash and run more zsh set up commands
Write-Host "Launching git bash and setting up zsh..." -ForegroundColor Green
& 'C:\Program Files\Git\bin\bash.exe' zsh-setup.sh

# Set up windows version of sudo
Write-Host "Launching git bash and setting up sudo..." -ForegroundColor Green
& 'C:\Program Files\Git\bin\bash.exe' sudo-setup.sh

# Set up python3
Write-Host "Launching git bash and setting up python3..." -ForegroundColor Green
& 'C:\Program Files\Git\bin\bash.exe' python3-setup.sh

# Setting git bash as default bash
Write-Host "Setting git bash as default bash..." -ForegroundColor Green
New-Item -ItemType File -Path $PROFILE -Force
Add-Content $PROFILE "`n& 'C:\Program Files\Git\bin\bash.exe'`n"
