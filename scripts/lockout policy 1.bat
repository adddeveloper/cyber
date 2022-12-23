net user
wmic UserAccount where name='username' set Passwordexpires=true
net user "username" /logonpasswordchg:yes
