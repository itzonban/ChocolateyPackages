$url        = 'https://www.mediamonkey.com/sw/MediaMonkey_5.0.0.2338.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  url           = $url
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  softwareName  = 'mediamonkey*'
  checksum      = '30545d90f20e5f6f402025798171d3f1d8025910f81f9b456e8ea94e9d4264ea'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs