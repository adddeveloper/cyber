@echo off

if not exist "./winfo.exe" (
	powershell -command "Invoke-WebRequest -Uri 'https://vidstromlabs.com/downloads/winfo.exe' -OutFile 'winfo.exe'"
)

PAUSE