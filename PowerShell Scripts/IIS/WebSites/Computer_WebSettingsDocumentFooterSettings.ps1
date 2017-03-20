################
# SYSKIT
# www.syskit.com
<#
Lists Websites with its document footer settings. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.webserver/staticContent  -name * | select defaultdocfooter, isdocfooterfilename, enabledocfooter -expand Collection
