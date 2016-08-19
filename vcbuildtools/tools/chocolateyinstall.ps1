$ErrorActionPreference = 'Stop';

$packageName= 'vcbuildtools'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://go.microsoft.com/fwlink/?LinkId=691126'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = 'vcbuildtools*'
  checksum      = '3e0de8af516c15547602977db939d8c2e44fcc0b'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs
