################
# SYSKIT
# www.syskit.com
<#
Lists all Stopped Windows Services. Run on any Computer.
#>
################
get-service | Where-Object {$_.status -eq "stopped"}