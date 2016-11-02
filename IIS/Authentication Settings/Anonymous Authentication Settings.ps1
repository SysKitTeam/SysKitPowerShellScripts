get-WebConfigurationProperty -filter /system.WebServer/security/authentication/AnonymousAuthentication -name * | select enabled, logonmethod, username, islocked, overridemode, overridemodeeffective
