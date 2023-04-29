# Install git bash using choco package manager
Write-Host "Install git bash using choco package manager..." -ForegroundColor Green
choco install git.install --params "/GitAndUnixToolsOnPath /NoGitLfs /SChannel /NoAutoCrlf /WindowsTerminal" -y
