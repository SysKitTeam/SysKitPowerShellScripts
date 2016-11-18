Get-WebConfigurationProperty /system.applicationhost/sites -name * | select -expand collection | select id, name, state, serverAutoStart
