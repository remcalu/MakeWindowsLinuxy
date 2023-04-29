# Setting git bash as default shell
Write-Host "Setting git bash as default shell..." -ForegroundColor Green
New-Item -ItemType File -Path $PROFILE -Force
Add-Content $PROFILE "`n& "C:\Program Files\Git\bin\bash.exe"`n"
