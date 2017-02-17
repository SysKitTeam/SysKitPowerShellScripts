################
# SYSKIT
# www.syskit.com
<#
Lists all Network Adapters for each Virtual Machine on the Hyper-V host. Run on the Hyper-V host.
#>
################
Get-VMNetworkAdapter -All | select Name,IsManagementOs,VMName,SwitchName,Status