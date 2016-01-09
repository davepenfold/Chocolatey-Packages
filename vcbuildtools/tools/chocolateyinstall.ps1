$ErrorActionPreference = 'Stop';

$packageName= 'vcbuildtools'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/3/8/E/38EE4758-7C31-4D96-8FF9-83CC313F0F78/VisualCppBuildTools_Full.exe'

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
