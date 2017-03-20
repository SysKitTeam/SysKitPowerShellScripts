################
# SYSKIT
# www.syskit.com
<#
Lists all Disabled User Accounts. Run on Domain Controller.
#>
################
Get-ADUser -filter {enabled -eq $false} | select  Name,DistinguishedName,SID,Enabled