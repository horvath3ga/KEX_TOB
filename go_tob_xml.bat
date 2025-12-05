@echo off & setlocal

:: Beallitasok
set "BASE=c:\hop2\src\Hrportal-Root\"
set "MODUL=TOB"
set "BASEPS=%~dp0"

:: Powershell hivas
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$b = '%BASE%'; " ^
  "$m = '%MODUL%'; " ^
  "$p = '%BASEPS%'; " ^
  "$files = @(); " ^
  "$files += Get-ChildItem -Path ($b + 'XML') -Filter ('*' + $m + '*.xml') -File | Select-Object -ExpandProperty FullName; " ^
  "$files += Get-ChildItem -Path ($b + 'XML\Profile') -Filter 'profileDefault.xml' -File | Select-Object -ExpandProperty FullName; " ^
  "& ($p + 'concat.ps1') -InputFiles $files -OutputFile ($p + 'src' + $m + '.txt')"
