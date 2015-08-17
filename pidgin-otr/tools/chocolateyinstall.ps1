$ErrorActionPreference = 'Stop';

$packageName = 'pidgin-otr'
$url = 'https://otr.cypherpunks.ca/binaries/windows/pidgin-otr-4.0.1.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = 'https://otr.cypherpunks.ca/binaries/windows/pidgin-otr-4.0.1.exe'

  silentArgs = '/S'
  
  checksum      = '55ec19049273ea0a4ddd339aa84e10ae'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
