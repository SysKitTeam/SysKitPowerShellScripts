################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool autostart settings for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection | select name, startmode, enable32BitAppOnWin64, managedRuntimeVersion, managedRuntimeLoader, enableConfigurationOverride, CLRConfigFile, passAnonymousToken, state, Attributes, ChildElements, ElementTagName, Methods
