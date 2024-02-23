$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = ''
$url64      = 'https://proton.me/download/PassDesktop/win32/x64/ProtonPass_Setup.exe'

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
  checksum64    = '733982FCB9F5A1432D288ED490B2A769656F3985E0228E7B8A0D6B2194DC81A5'
  checksumType64= 'sha256' #default is checksumType
}

Install-ChocolateyPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage