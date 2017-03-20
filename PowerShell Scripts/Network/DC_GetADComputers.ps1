################
# SYSKIT
# www.syskit.com
<#
Lists all Computer objects and their IPv4 address in domain. Run on Domain Controller.
#>
################
Get-ADComputer -Filter * -Properties IPv4Address | select DNSHostName, Enabled, IPv4Address, SID