$ErrorActionPreference = 'Stop'
# Coinetic.exe /uninstall /quiet - removes Coinetic without a window (your own block rules stay, see https://coinetic.io/deploy-coinetic)
[array]$key = Get-UninstallRegistryKey -SoftwareName 'Coinetic AI Security*'
if ($key.Count -eq 1) {
  $exe = ($key[0].UninstallString -split '"')[1]
  Uninstall-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' -SilentArgs '/uninstall /quiet' -File $exe -ValidExitCodes @(0)
} elseif ($key.Count -eq 0) { Write-Warning 'Coinetic AI Security is not installed.' }
else { Write-Warning "$($key.Count) installations match - uninstall them in Apps and Features." }
