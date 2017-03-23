############
# SYSKIT
# www.syskit.com
<#
Displays response time for specific SharePoint sites. SharePoint sites to test have to be specified in the script. Run on local Computer.
#>
<# NOTE:
This PowerShell Script needs to be excecuted using alternate credential with no prompts (non-interactive mode). User credentials will be stored in a secure manner in a variable that the script can then reuse.
1. Under $secpasswd "password", enter the password
2. Under $Credentials "domain\username", enter the username
3. Under $URLList, replace the placeholder with desired SharePoint sites.
#>

$secpasswd = ConvertTo-SecureString "password" -AsPlainText -Force
$Credentials = New-Object System.Management.Automation.PSCredential ("domain\username", $secpasswd)
$URLList = "http://sharepoint.contoso.local",
"http://sharepoint.prod.local"

$Result = @() 
Foreach($Uri in $URLList) { 
  $time = try{ 
  $request = $null 
   ## Request the URI, and measure how long the response took. 
  $result1 = Measure-Command { $request = Invoke-WebRequest -Uri $uri -Credential $Credentials } 
  ($result1.Ticks - ($result1.Ticks % 10000)) / 10000  }  
  catch  
  {
   <# If the request generated an exception (i.e.: 500 server 
   error or 404 not found), we can pull the status code from the 
   Exception.Response property #>
   $request = $_.Exception.Response
   $time = -1
  }   
  $result += [PSCustomObject] @{ 
  Time = Get-Date;
  Uri = $uri; 
  StatusCode = [int] $request.StatusCode; 
  StatusDescription = [string] $request.StatusDescription; 
  "ResponseLength (KB)" = [float] [math]::Round($request.RawContentLength / 1024, 2); 
  "TimeTaken (ms)" = [int] $time;  
  } 
} 
return $result
