################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool general settings for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection | SELECT name, applicationpoolsid, autoStart, queueLength, managedRuntimeVersion, managedPipelineMode
