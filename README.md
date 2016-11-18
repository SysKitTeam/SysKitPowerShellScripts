# SysKit PowerShell Scripts

This repository contains importable SysKit PowerShell scripts that are used to generate PowerShell reports.

The PowerShell code contained in these scripts is remotely executed on servers monitored by SysKit and the data gathered is used to construct reports inside SysKit.

The scripts are licensed under the terms of the MIT license.

Script inventory:

```
IIS

Scripts for generating IIS documentation.

Application Pools:
Application Pool Autostart Settings.ps1
Application Pool Failure Settings.ps1
Application Pool Identity Settings.ps1
Application Pool Orphan Action.ps1
Application Pool Process Model.ps1
Application Pool Recycle Settings.ps1
Application Pool Timeout Settings.ps1
Application Pools General Settings.ps1

Asp Settings:
Asp Script Settings.ps1

ASP.NET:
Asp Net Session Settings.ps1
Asp Net SMTP Settings.ps1
Asp Net Trust Level Settings.ps1

Authentication Settings:
Anonymous Authentication Settings.ps1
Basic Authentication Settings.ps1
Client Authentication Settings.ps1

Web Sites:
Web Settings Document Footer Settings.ps1
Web Site Source Settings.ps1
Web Sites and Application Pools.ps1
Web Sites Binding Settings.ps1
Web Sites General Settings.ps1
Web Sites ISAPI Filter Settings.ps1
Web Sites Network Settings.ps1
```

```
AD

Scripts for querying AD objects on Domain Controller.

DC_GetAllClientComputers.ps1
DC_GetAllDomainAdmins.ps1
DC_GetAllDomainTrusts.ps1
DC_GetAllOUs.ps1
DC_GetAllServers.ps1
DC_GetAllUsers.ps1
DC_GetDCWithFISMO.ps1
DC_GetDisabledUsers.ps1
DC_GetEmptyDomainGroups.ps1
DC_GetLockedAccounts.ps1
DC_GetTrustedForDelegationUsers.ps1
DC_GetUserPasswordExpiry.ps1
```
