$packageName = 'hashcalc'
$url = 'http://www.slavasoft.com/zip/hashcalc.zip'
try {
  $installPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyZipPackage "$packageName" $url "$installPath"

  $installFilePath = get-childitem "$installPath" -recurse -include *.exe | select -First 1
  Install-ChocolateyInstallPackage 'setup' 'exe' '/SILENT' "$installFilePath"

  Remove-Item "$installFilePath"
} catch {
  throw $_.Exception
}