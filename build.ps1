#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

& dotnet build CompileCommandsJson.sln /p:Configuration=Debug /p:Platform="Any CPU"

& .\post-build.ps1

Set-Location "${oldPwd}"
