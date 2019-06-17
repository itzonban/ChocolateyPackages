$packageName = 'pidgin-otr'
$shouldUninstall = $true

$local_key     = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\$packageName"
$local_key64   = "HKCU:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName" 
$machine_key   = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$packageName"
$machine_key64 = "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName"

$file = @($local_key, $local_key64, $machine_key, $machine_key64) `
    | ?{ Test-Path $_ } `
    | Get-ItemProperty `
    | Select -ExpandProperty UninstallString

if ($file -eq $null -or $file -eq '') {
    Write-Host "$packageName has already been uninstalled by other means."
    $shouldUninstall = $false
}

$silentArgs = '/S'

if ($shouldUninstall) {
 Uninstall-ChocolateyPackage -PackageName $packageName -SilentArgs $silentArgs -File $file
}
