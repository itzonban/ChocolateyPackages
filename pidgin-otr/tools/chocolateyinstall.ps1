$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'pidgin-otr'
  fileType      = 'exe'
  url           = 'https://otr.cypherpunks.ca/binaries/windows/pidgin-otr-4.0.2.exe'
  silentArgs    = '/S'

  checksum      = '9fb76c880d668ee7155f393d769250ac'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
