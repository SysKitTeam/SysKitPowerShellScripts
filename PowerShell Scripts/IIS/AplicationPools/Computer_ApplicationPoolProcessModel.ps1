################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool ping settings and startup and shutdown time limits for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection | select name -expand processmodel | select name, identitytype, loaduserprofile, maxprocesses, pingingenabled, pingresponsetime, pinginterval, startuptimelimit, shutdowntimelimit
