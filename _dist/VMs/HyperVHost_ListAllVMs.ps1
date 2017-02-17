################
# SYSKIT
# www.syskit.com
<#
Lists all Virtual Machines on the Hyper-V host. Run on the Hyper-V host.
#>
################
Get-VM | select Name,State,Uptime,@{N="MemoryMB";E={$_.MemoryAssigned/1MB}},Status 