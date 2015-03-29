$packageName = 'explore2fs'
$url = 'http://www.chrysocome.net/downloads/explore2fs-1.07.zip'
try {
  $installPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyZipPackage $packageName $url "$installPath"
  
  $exeFile = Join-Path "$installPath" "explore2fs.exe"
  Install-ChocolateyDesktopLink $exeFile

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}me"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
} throw
}