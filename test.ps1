#!/usr/bin/env pwsh

$oldPwd=Get-Location

Set-Location "${PSScriptRoot}"

& .\build.ps1

& pwsh -nop -WorkingDirectory (Get-Location) -C {
  $arch=${env:PROCESSOR_ARCHITECTURE}.ToLower()
	findvs -arch="${arch}" -host_arch="${arch}"
	msbuild -logger:./bin/Debug/net11.0/CompileCommandsJson.dll test/dir.proj
}

Set-Location "${oldPwd}"
