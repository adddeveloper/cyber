@echo off

REM "Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings."
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v SCENoApplyLegacyAuditPolicy /t REG_DWORD /d 1 /f

REM "V-220748 and V-220749"
auditpol /set /subcategory:"Credential Validation" /success:enable /failure:enable

REM "V-220750"
auditpol /set /subcategory:"Security Group Management" /success:enable

REM "V-220751 and V-220752"
auditpol /set /subcategory:"User Account Management" /success:enable /failure:enable

REM "V-220753"
auditpol /set /subcategory:"Plug and Play Events" /success:enable

REM "V-220754"
auditpol /set /subcategory:"Process Creation" /success:enable

REM "V-220755"
auditpol /set /subcategory:"Account Lockout" /failure:enable

REM "V-220756"
auditpol /set /subcategory:"Group Membership" /success:enable

REM "V-220757"
auditpol /set /subcategory:Logoff /success:enable

REM "V-220758 and V-220759"
auditpol /set /subcategory:Logon /success:enable /failure:enable

REM "V-220760"
auditpol /set /subcategory:"Special Logon" /success:enable

REM "V-220761 and V-220762"
auditpol /set /subcategory:"File Share" /success:enable /failure:enable

REM "V-220763 and V-220764"
auditpol /set /subcategory:"Other Object Access Events" /success:enable /failure:enable

REM "V-220765 and V-220766"
auditpol /set /subcategory:"Removable Storage" /success:enable /failure:enable

REM "V-220767"
auditpol /set /subcategory:"Audit Policy Change" /success:enable

REM "V-220768"
auditpol /set /subcategory:"Authentication Policy Change" /success:enable

REM "V-220769"
auditpol /set /subcategory:"Authorization Policy Change" /success:enable

REM "V-220770 and V-220771"
auditpol /set /subcategory:"Sensitive Privilege Use" /success:enable /failure:enable

REM "V-220772"
auditpol /set /subcategory:"IPSec Driver" /failure:enable

REM "V-220773 and V-220774"
auditpol /set /subcategory:"Other System Events" /success:enable /failure:enable

REM "V-220775"
auditpol /set /subcategory:"Security State Change" /success:enable

REM "V-220776"
auditpol /set /subcategory:"Security System Extension" /success:enable

REM "V-220777 and V-220778"
auditpol /set /subcategory:"System Integrity" /success:enable /failure:enable

REM "V-220786"
auditpol /set /subcategory:"Other Policy Change Events" /failure:enable

REM "V-220787 and V-220788"
auditpol /set /subcategory:"Other Logon/Logoff Events" /success:enable /failure:enable

REM "V-220789"
auditpol /set /subcategory:"Detailed File Share" /failure:enable

REM "V-220791"
auditpol /set /subcategory:"MPSSVC Rule-Level Policy Change" /success:enable /failure:enable

PAUSE