$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = ''
$url64      = 'https://proton.me/download/PassDesktop/win32/x64/ProtonPass_Setup_1.14.3.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  #url           = $url
  url64bit      = $url64
  silentArgs    = "/s"
  validExitCodes= @(0)
  softwareName  = 'Proton Pass*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  #checksum      = '{{Checksum}}'
  #checksumType  = '{{ChecksumType}}' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '2893CDA537C814017180BC627C052DD69FF5ECAE66BEB8600B707B244A1C025E'
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage