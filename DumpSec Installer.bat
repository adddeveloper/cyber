@echo off

if not exist "./temp" (
	mkdir temp
)

if not exist "./temp/dumpsec_x64.zip" (
	cd temp
	powershell -command "Invoke-WebRequest -Uri 'https://www.systemtools.com/download/dumpsec_x64.zip' -OutFile 'dumpsec_x64.zip'"
	cd ../
)

if not exist "./temp/dumpsec_x86.zip" (
	cd temp
	powershell -command "Invoke-WebRequest -Uri 'https://www.systemtools.com/download/dumpsec_x86.zip' -OutFile 'dumpsec_x86.zip'"
	cd ../
)

if not exist "./DumpSec" (
	mkdir DumpSec
)

cd DumpSec

tar -xf ../temp/dumpsec_x64.zip
tar -xf ../temp/dumpsec_x86.zip

PAUSE