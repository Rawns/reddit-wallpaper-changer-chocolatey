
$ErrorActionPreference = 'Stop';

$packageName= 'reddit-wallpaper-changer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Rawns/Reddit-Wallpaper-Changer/releases/download/release/Reddit.Wallpaper.Changer.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url

  softwareName  = 'reddit-wallpaper-changer*'

  checksum      = '16fa512b05dcfc7215805e218bb70940'
  checksumType  = 'md5'

  silentArgs    = "/passive /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs


















