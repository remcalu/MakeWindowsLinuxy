# Set up zsh by moving zsh files to git bash folder
Write-Host "Set up zsh by moving zsh files to git bash folder..." -ForegroundColor Green
xcopy "zsh-files\*" "C:\Program Files\Git" /I /E /Y /R /H /C
