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
Set-Alias n npm
Set-Alias y yarn
Set-Alias l ls
Set-Alias vi nvim
Set-Alias web webstorm.cmd 
Set-Alias http curlie
Set-Alias open ii

function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Import the Chocolatey Profile 
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
