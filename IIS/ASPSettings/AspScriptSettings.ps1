Get-WebConfigurationProperty /system.webserver/asp -name * | select scriptlanguage, scripterrorsenttobrowser, scripterrormessage -expand limits |select *
