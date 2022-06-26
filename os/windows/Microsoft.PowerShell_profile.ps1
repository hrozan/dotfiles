# Author: Higor Rozan

Invoke-Expression (&starship init powershell)

Import-Module Terminal-Icons
Import-Module PSFzf
Import-Module z

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

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