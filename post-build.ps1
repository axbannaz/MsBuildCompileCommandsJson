#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

$binDir="${env:USERPROFILE}/bin"

if (!(Test-Path -Path "$binDir")) {
  New-Item -Path "$binDir" -ItemType Directory
}

Copy-Item -Force bin/Debug/net481/* "$binDir"

Set-Location "${oldPwd}"
