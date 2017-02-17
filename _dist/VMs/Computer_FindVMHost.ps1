################
# SYSKIT
# www.syskit.com
<#
Get Host Name of the Virtual Machine Host. Run on the Virtual Machine.
#>
################
(get-item "HKLM:\SOFTWARE\Microsoft\Virtual Machine\Guest\Parameters").GetValue("HostName")