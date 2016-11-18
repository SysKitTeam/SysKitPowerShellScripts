Get-WebConfigurationProperty /system.webserver/asp/session  -name * | select  allowsessionstate, keepsessionidsecure, max, timeout
