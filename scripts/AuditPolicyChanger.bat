@echo off

if exist "C:\audit.csv" del "C:\audit.csv"

REM "Do backup of the original policies"
auditpol /backup /file:"C:\audit.csv"

REM "Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings."
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v SCENoApplyLegacyAuditPolicy /t REG_DWORD /d 1 /f

REM "Changes all audit policies to success and failure"
auditpol /set /category:* /success:enable /failure:enable

if not exist "C:\Windows\System32\GroupPolicy\Machine\Microsoft\Windows NT\Audit" (
	mkdir "C:\Windows\System32\GroupPolicy\Machine\Microsoft\Windows NT\Audit"
)

if exist "C:\Windows\System32\GroupPolicy\Machine\Microsoft\Windows NT\Audit\audit.csv" (
	del "C:\Windows\System32\GroupPolicy\Machine\Microsoft\Windows NT\Audit\audit.csv"
)

auditpol /backup /file:"C:\Windows\System32\GroupPolicy\Machine\Microsoft\Windows NT\Audit\audit.csv"

gpupdate /force

PAUSE
