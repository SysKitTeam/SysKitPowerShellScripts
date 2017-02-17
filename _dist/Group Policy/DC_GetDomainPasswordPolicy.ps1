################
# SYSKIT
# www.syskit.com
<#
Displays information about the password policy in specific Domain. Run on Domain Controller.
#>
################
Get-ADDefaultDomainPasswordPolicy | select DistinguishedName, ComplexityEnabled, LockoutDuration, LockoutThreshold, MinPasswordAge, MaxPasswordAge, MinPasswordLength, PasswordHistoryCount, ReversibleEncryptionEnabled
