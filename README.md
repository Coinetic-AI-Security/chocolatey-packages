# Chocolatey packages - Coinetic AI Security

Source of the Chocolatey package [`coinetic`](https://community.chocolatey.org/packages/coinetic):

```powershell
choco install coinetic
```

- `coinetic/coinetic.nuspec` - package description
- `coinetic/tools/chocolateyInstall.ps1` - downloads the signed installer from its fixed per-version address on coinetic.io, checks its SHA-256 and installs it silently (`/quiet /accepteula /trial` - starts the free 30-day trial)
- `coinetic/tools/chocolateyUninstall.ps1` - removes it silently (`Coinetic.exe /uninstall /quiet`)

The package contains only these scripts, no program files. Coinetic AI Security is commercial software by Salus Alpha Group AG ([licence agreement](https://coinetic.io/eula)); see [coinetic.io](https://coinetic.io).
