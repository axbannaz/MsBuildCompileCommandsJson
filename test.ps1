#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

& .\build.ps1

& pwsh -nop -WorkingDirectory (Get-Location) -C {
	findvs ${env:PROCESSOR_ARCHITECTURE}
	msbuild -logger:./bin/Debug/net481/CompileCommandsJson.dll test/dir.proj
}

Set-Location "${oldPwd}"
