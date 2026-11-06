$ErrorActionPreference = 'Stop'
# Coinetic AI Security 1.0.9806.28879: the signed installer from its fixed per-version address, checked by SHA-256.
# /quiet = no window, /accepteula = the licence agreement (https://coinetic.io/eula), /trial = start the free 30-day trial.
$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://coinetic.io/download/1.0.9806.28879/CoineticSetup.exe'
  checksum       = 'af9ef1932af45f45001866ffeec182a291bf7a5de08feac3c66023781bde3773'
  checksumType   = 'sha256'
  silentArgs     = '/quiet /accepteula /trial'
  validExitCodes = @(0)
  softwareName   = 'Coinetic AI Security*'
}
Install-ChocolateyPackage @packageArgs
