################
# SYSKIT
# www.syskit.com
<#
Lists Websites ISAPI filter settings. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.webServer/isapiFilters/filter  -name * | select name, path, enabled, enablecache,  precondition
