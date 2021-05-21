$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'pidgin-otr'
  fileType      = 'exe'
  url           = 'https://otr.cypherpunks.ca/binaries/windows/pidgin-otr-4.0.2.exe'

  silentArgs = '/S'
  
  checksum      = '939B9FFE4C6D6CAEE0AA32CE1FA502D087A44C5793493069B4A37DA9E023B444'
  checksumType  = 'SHA256'
}

Install-ChocolateyPackage @packageArgs
