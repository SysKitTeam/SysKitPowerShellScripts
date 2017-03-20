################
# SYSKIT
# www.syskit.com
<#
Displays basic AspNet session settings for the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.webserver/asp/session  -name * | select  allowsessionstate, keepsessionidsecure, max, timeout
