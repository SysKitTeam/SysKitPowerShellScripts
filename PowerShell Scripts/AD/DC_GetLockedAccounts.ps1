################
# SYSKIT
# www.syskit.com
<#
Lists all Locked User Accounts. Run on Domain Controller.
#>
################
Search-ADAccount -LockedOut | Select Name,DistinguishedName,SID,Enabled,LockedOut
