# Launching git bash and run more zsh set up commands through it
Write-Host "Launching git bash and run more zsh set up commands through it..." -ForegroundColor Green
& "C:\Program Files\Git\bin\bash.exe" "scripts-bash\setup-zsh.sh"

# Launching git bash and run sudo set up commands through it
Write-Host "Launching git bash and run sudo set up commands through it..." -ForegroundColor Green
& "C:\Program Files\Git\bin\bash.exe" "scripts-bash\setup-sudo.sh"

# Launching git bash and run python3 set up commands through it
Write-Host "Launching git bash and setting up python3..." -ForegroundColor Green
& "C:\Program Files\Git\bin\bash.exe" "scripts-bash\setup-python3.sh"
