################
# SYSKIT
# www.syskit.com
<#
Displays anonymous authentication settings for the selected Computer. Run on any Computer.
#>
################
get-WebConfigurationProperty -filter /system.WebServer/security/authentication/AnonymousAuthentication -name * | select enabled, logonmethod, username, islocked, overridemode, overridemodeeffective
