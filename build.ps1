#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

& dotnet build CompileCommandsJson.csproj /p:Configuration=Debug

& .\post-build.ps1

Set-Location "${oldPwd}"
