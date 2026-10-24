#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

$binDir="${HOME}/bin"

if (!(Test-Path -Path "$binDir")) {
  New-Item -Path "$binDir" -ItemType Directory
}

Copy-Item -Force bin/Debug/net10.0/* "$binDir"

Set-Location "${oldPwd}"
