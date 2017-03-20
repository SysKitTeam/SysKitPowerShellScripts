################
# SYSKIT
# www.syskit.com
<#
Lists all Domain Trusts. Run on Domain Controller.
#>
################
Get-ADTrust -Filter * | select Source, Target, Direction, ForestTransitive