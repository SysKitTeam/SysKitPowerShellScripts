################
# SYSKIT
# www.syskit.com
<#
Displays client authentication settings for the selected Computer. Run on any Computer.
#>
################
get-WebConfigurationProperty -filter /system.webServer/security/authentication/iisClientCertificateMappingAuthentication  -name * | select  enabled, onetoonecertificatemappingsenabled, manytoonecertificatemappingsenabled, defaultlogondomain, logonmethod, islocked, overridemode, overridemodeeffective
