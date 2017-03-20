################
# SYSKIT
# www.syskit.com
<#
Displays AspNet SMTP settings for the selected Computer. Run on any Computer.
#>
################
Get-WebConfigurationProperty /system.net/mailSettings/smtp -name network | select  defaultcredentials, host, port, username