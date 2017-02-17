################
# SYSKIT
# www.syskit.com
<#
Lists Domain Controllers with FSMO roles. Run on Domain Controller.
#>
################
Get-ADDomainController -Filter * | Select-Object Name, IPv4Address, IsReadOnly, OperatingSystem, OperationMasterRoles