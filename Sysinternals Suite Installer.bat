@echo off

if not exist "./temp" (
	mkdir temp
)

if not exist "./temp/SysinternalsSuite.zip" (
	cd temp
	powershell -command "Invoke-WebRequest -Uri 'https://download.sysinternals.com/files/SysinternalsSuite.zip' -OutFile 'SysinternalsSuite.zip'"
	cd ../
)

if not exist "./SysinternalsSuite" (
	mkdir SysinternalsSuite
)

cd SysinternalsSuite

tar -xf ../temp/SysinternalsSuite.zip

PAUSE
