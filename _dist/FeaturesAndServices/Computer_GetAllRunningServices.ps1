################
# SYSKIT
# www.syskit.com
<#
Lists all Running Windows Services. Run on any Computer.
#>
################
get-service | Where-Object {$_.status -eq "running"}