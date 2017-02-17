################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool identity settings for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection | select name -expand processmodel | select name, identitytype, loaduserprofile, username
