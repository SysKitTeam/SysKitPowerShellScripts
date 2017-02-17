# SysKit PowerShell Scripts

This repository contains importable PowerShell scripts that are used to generate PowerShell reports.

The PowerShell code contained in these scripts is remotely executed on servers monitored by SysKit and the data gathered is used to construct reports inside SysKit.

The scripts are licensed under the terms of the MIT license.

Script inventory:

### IIS

Scripts for generating IIS documentation.

###### Application Pools
```
Computer_ApplicationPoolAutostartSettings.ps1
Computer_ApplicationPoolFailureSettings.ps1
Computer_ApplicationPoolIdentitySettings.ps1
Computer_ApplicationPoolOrphanAction.ps1
Computer_ApplicationPoolProcessModel.ps1
Computer_ApplicationPoolRecycleSettings.ps1
Computer_ApplicationPoolTimeoutSettings.ps1
Computer_ApplicationPoolsGeneralSettings.ps1
```

###### Asp Settings
```
Computer_AspScriptSettings.ps1
```

###### ASP.NET
```
Computer_AspNetSessionSettings.ps1
Computer_AspNetSMTPSettings.ps1
Computer_AspNetTrustLevelSettings.ps1
```

###### Authentication Settings
```
Computer_AnonymousAuthenticationSettings.ps1
Computer_BasicAuthenticationSettings.ps1
Computer_ClientAuthenticationSettings.ps1
```

###### Web Sites
```
Computer_WebSettingsDocumentFooterSettings.ps1
Computer_WebSiteSourceSettings.ps1
Computer_WebSitesandApplicationPools.ps1
Computer_WebSitesBindingSettings.ps1
Computer_WebSitesGeneralSettings.ps1
Computer_WebSitesISAPIFilterSettings.ps1
Computer_WebSitesNetworkSettings.ps1
```

### AD

Scripts for querying AD objects on a Domain Controller.

```
DC_ComputersByOUs.ps1
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
### Website Monitoring

Scripts for displaying information on website status.

```
Website_AvailabilityMonitoring.ps1
```
###www.syskit.com
