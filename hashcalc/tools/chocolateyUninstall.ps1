﻿$packageName = 'hashcalc'
try {
  $file = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\HashCalc_is1 UninstallString).UninstallString;
  Uninstall-ChocolateyPackage "$packageName" 'EXE' -SilentArgs '/SILENT' -file $file
} catch {
  throw $_.Exception
}