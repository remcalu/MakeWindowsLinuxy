# Setting git bash as default bash
Write-Host "Setting git bash as default bash..." -ForegroundColor Green
New-Item -ItemType File -Path $PROFILE -Force
Add-Content $PROFILE "`n& 'C:\Program Files\Git\usr\bin\zsh.exe'`n"
