################
# SYSKIT
# www.syskit.com
<#
Displays AspNet trust settings for the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.web/trust -name * | select *