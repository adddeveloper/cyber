REM Set Account lockout duration to 30 minutes
net accounts /lockoutduration:30

REM Set Account lockout threshold to 10 bad logon attempts
net accounts /lockoutthreshold:10

REM Set Reset account lockout counter after 30 minutes
net accounts /lockoutwindow:30

PAUSE