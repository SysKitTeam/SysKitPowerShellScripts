Get-WebConfigurationProperty /system.net/mailSettings/smtp -name network | select  defaultcredentials, host, port, username
