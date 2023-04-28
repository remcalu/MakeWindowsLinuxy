# Set up chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Set up git bash
Invoke-WebRequest https://github.com/git-for-windows/git/releases/download/v2.32.0.windows.2/Git-2.32.0.2-64-bit.exe -OutFile Git-2.32.0.2-64-bit.exe
./Git-2.32.0.2-64-bit.exe /VERYSILENT /NORESTART /SP-

# Remove git bash installer
Remove-Item Git-2.32.0.2-64-bit.exe

# Set up zsh
move zsh-files\* "C:\Program Files\Git"

# Launch git bash
& 'C:\Program Files\Git\bin\bash.exe'

# Launch zsh
zsh
