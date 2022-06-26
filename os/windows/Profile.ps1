
# Start Starship
Invoke-Expression (&starship init powershell)

# Complete
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Terminal Icons
Import-Module -Name Terminal-Icons

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# Alias
Set-Alias g git
Set-Alias s scoop
Set-Alias n npm
Set-Alias l ls
Set-Alias vi nvim
Set-Alias vim neovide
Set-Alias web webstorm.cmd 
Set-Alias clion clion.cmd 
Set-Alias http curlie
Set-Alias open ii

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function Reset-Vi-Plugins {
  Remove-Item .\plugin\ -Force
  nvim -c "PackerSync" 
}