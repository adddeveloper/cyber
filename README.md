# CyberTitan Windows Mini-Checklist

- Password Policy

  - Enforce password history: _5 passwords remembered_
  - Maximum password age: _(30-90 days)_
  - Minimum password age: _(10-30days)_
  - Password must meet complexity requirements: _Enabled_
  - Store password using reversible encryption: _Disabled_

- Lockout Policy

  - Account lockout duration: _30 minutes_
  - Account lockout threshold: _10 incorrect passwords_
  - Reset account lockout counter after: _30 minutes_

- Local Users and Groups

  - Disable accounts for all **UNAUTHORIZED** users
  - _'Administrators'_ group should **ONLY** have **AUTHORIZED** admins
  - _'Guests'_ group should **ONLY** have 'Guest' account

- Enable all security settings in Windows Security

- Local Computer Policy _(Computer Configuration\Administrative Templates\Network\WLAN Service\WLAN Settings)_

  - Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotsopts offering paid services: _Disabled_

- Change User Account Control Settings: _Always notify_

- View network connections _(Wi-Fi Properties)_ **UNCHECK**

  - Client for Microsoft Networks
  - File and Printer Sharing for Microsoft Networks
  - QoS Packet Scheduler
  - **CLICK** _Internet Protocol Version 4 (TCP/IPv4)_ <button>Properties</button> <button>Advanced</button>
    - 'DNS' tab, **UNCHECK** mark _'Register this connection address in DNS'_
    - 'WINS' tab, **SELECT** _'Disable NETBIOS over TCP/IP'_
  - Microsoft Network Adapter Multiplexor Protocol
  - Microsoft LLDP Protocol Driver
  - Internet Protocol Version 6 (TCP/IPv6)
  - Link Layer Topology Discovery Responder
  - Link Layer Topology Discovery Mapper IO Driver

> Make sure _Internet Protocol Version 4 (TCP/IPv4)_ is **NOT UNCHECKED**

- Services

  - UPnP Device Host: _Stopped and Disabled_
  - Remote Desktop Services: _Depends on README_
  - Telnet: _Stopped and Disabled_
  - SNMP Trap: _Stopped and Disabled_
  - Windows Event Collector: _Running and Automatic_
  - Remote Registry: _Stopped and Disabled_

- Turn Windows features on or off **DISABLE**

  - Internet Information Services (IIS)
  - SMB 1.0/CIFS File Sharing Support
  - Telnet client/server
  - TFTP client/server (**EXCEPT** FTP Server)
  - SNMP (Windows Server **ONLY**)
  - RIP Listener (**UNKNOWN**)
  - Client for NFS
  - World Wide Web Services (Windows Server **ONLY**)\

- Shared Folders _(only 3 shares unless README says otherwise)_

  - ADMIN$
  - C$
  - IPC$

- Firewall Rules

  - **ALLOW** outbound connections
  - **DISABLE** inbound connections

- Audit Policy: _Change all to **Success/Failure**_

- Turn on Windows Defender _(go into gpedit.msc and find '**Windows Defender**' and change to **ENABLE**)_
