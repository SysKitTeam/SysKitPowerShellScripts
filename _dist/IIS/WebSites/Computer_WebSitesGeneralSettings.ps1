################
# SYSKIT
# www.syskit.com
<#
Lists Websites general settings. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/sites -name * | select -expand collection | select id, name, state, serverAutoStart
