# MakeWindowsLinuxy

<img src="https://user-images.githubusercontent.com/59599955/235325729-74113269-f709-4141-9ef4-11cbf5393c8e.jpg" alt="_48e6bbd8-258a-4f95-a655-d7fd825aaafc" width="384" height="384">

Are you tired of how terrible powershell is? I mean, WSL is a thing, but its so darn laggy, and the different filesystem that it uses is also annoying. Well, now you can do things more easily with the windows terminal! After this guide, you will have...
- A much more versatile shell (zsh)
- The ability to use `git`, and view branch names in the terminal prompt
- The ability to use `python3`
- Access to a linux-like `sudo` command
- Access to many more linux-like commands such as `grep`, `wget`, `which`, `ssh`, and `gzip`

# Instructions
### Mandatory
1. Extract all of these files to a folder
2. Launch powershell as administrator
3. Navigate to the directory that these files are in
4. Enter the command `Set-ExecutionPolicy Unrestricted -Force` into the console, this will allow you to run the script
5. Enter the command `.\master-installer.ps1` into the console, you may be prompted to confirm some actions, just answer yes to all of them

### Optional
Download windows terminal [here](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701), you'll thank me later
