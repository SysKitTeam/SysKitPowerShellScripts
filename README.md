# SysKit PowerShell Scripts

This repository contains importable SysKit PowerShell scripts that are used to generate PowerShell reports.

The PowerShell code contained in these scripts is remotely executed on servers monitored by SysKit and the data gathered is used to construct reports inside SysKit.

The scripts are licensed under the terms of the MIT license.

Script inventory:

### IIS

Scripts for generating IIS documentation.

###### Application Pools
```
ApplicationPoolAutostartSettings.ps1
ApplicationPoolFailureSettings.ps1
ApplicationPoolIdentitySettings.ps1
ApplicationPoolOrphanAction.ps1
ApplicationPoolProcessModel.ps1
ApplicationPoolRecycleSettings.ps1
ApplicationPoolTimeoutSettings.ps1
ApplicationPoolsGeneralSettings.ps1
```

###### Asp Settings
```
Asp Script Settings.ps1
```

###### ASP.NET
```
AspNetSessionSettings.ps1
AspNetSMTPSettings.ps1
AspNetTrustLevelSettings.ps1
```

###### Authentication Settings
```
AnonymousAuthenticationSettings.ps1
BasicAuthenticationSettings.ps1
ClientAuthenticationSettings.ps1
```

###### Web Sites
```
WebSettingsDocumentFooterSettings.ps1
WebSiteSourceSettings.ps1
WebSitesandApplicationPools.ps1
WebSitesBindingSettings.ps1
WebSitesGeneralSettings.ps1
WebSitesISAPIFilterSettings.ps1
WebSitesNetworkSettings.ps1
```

### AD

Scripts for querying AD objects on a Domain Controller.

```
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

### Features And Services

Scripts for listing installed features and services on servers.

```
Computer_GetAllRunningServices.ps1
Computer_GetAllStoppedServices.ps1
Computer_GetInstalledFeatures.ps1
```

### Group Policy

Scripts for displaying Group Policy information.

```
DC_GetDomainPasswordPolicy.ps1
DC_GetGPOReport.ps1
```

### Network

Scripts for displaying network information.

```
Computer_GetIPConfig.ps1
Computer_GetIPInterfaceSettings.ps1
Computer_GetTCPConnections.ps1
DC_GetADComputers.ps1
```

### VMs

Scripts for displaying Hyper-V Virtual Machine information.

```
Computer_FindVMHost.ps1
HyperVHost_GetVMNetworkAdapters.ps1
HyperVHost_ListAllVMs.ps1
HyperVHost_ListVMDisks.ps1
```
