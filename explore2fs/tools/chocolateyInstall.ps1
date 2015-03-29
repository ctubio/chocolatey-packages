$packageName = 'explore2fs'
$url = 'http://www.chrysocome.net/downloads/explore2fs-1.07.zip'
try {
  $installPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyZipPackage $packageName $url "$installPath"

  $exeFile = Join-Path "$installPath" "explore2fs.exe"
  Install-ChocolateyDesktopLink $exeFile
} catch {
  throw $_.Exception
}