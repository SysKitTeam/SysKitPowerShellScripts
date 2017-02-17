################
# SYSKIT
# www.syskit.com
<#
Displays information about Windows Server features that are available for installation and installed on the target computer(s). Run on any Computer.
#>
################
Get-WindowsFeature | Where-Object {$_.Installed -match "True"}