$ErrorActionPreference = 'Stop';

$packageName= 'vcbuildtools'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/E/4/C/E4C8C3B5-7B82-4069-AD59-3A7FF8F87C74/VisualCppBuildTools_Full.exe'

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
