################
# SYSKIT
# www.syskit.com
<#
Displays basic authentication settings for the selected Computer. Run on any Computer.
#>
################
get-WebConfigurationProperty -filter /system.WebServer/security/authentication/BasicAuthentication -name *| select  enabled, relm, defaultlogondomain, logonMethod, islocked, overridemode, overridemodeeffective
