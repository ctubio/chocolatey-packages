$packageName = 'visualregexp.portable'
$url = 'http://laurent.riesterer.free.fr/regexp/visual_regexp-3.1.exe'
try {
  $fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\visual_regexp-3.1.exe"

  Get-ChocolateyWebFile $packageName "$fileFullPath" $url
  Install-ChocolateyDesktopLink "$fileFullPath"

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}