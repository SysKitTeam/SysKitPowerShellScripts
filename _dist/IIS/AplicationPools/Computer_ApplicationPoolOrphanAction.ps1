################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool Orphan action settings for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection | select name -expand Failure |select name, OrphanActionExe, OrphanActionParams, OrphanWorkerProcess
