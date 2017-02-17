################
# SYSKIT
# www.syskit.com
<#
Displays general Asp Script info for the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.webserver/asp -name * | select scriptlanguage, scripterrorsenttobrowser, scripterrormessage -expand limits |select *
