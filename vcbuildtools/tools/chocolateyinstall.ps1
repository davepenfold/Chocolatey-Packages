$ErrorActionPreference = 'Stop';

$packageName= 'vcbuildtools'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://go.microsoft.com/fwlink/?LinkId=691126'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = 'vcbuildtools*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
