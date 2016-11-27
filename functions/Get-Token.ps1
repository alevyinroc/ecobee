function Get-Token
{
[cmdletBinding()]
Param(
    [string]$APIKey,
    [string]$AuthzCode,
    [switch]$Refresh
    )
 $TokenURI = "https://api.ecobee.com/token";
 $TokenRequest = "grant_type=ecobeePin&code=$AuthzCode&client_id=$APIKey";
 $TokenResponse = Invoke-RestMethod -Uri $TokenURI -Method Post -Body $TokenRequest;
 $Global:access_token = $TokenResponse.access_token;
 $Global:refresh_token = $TokenResponse.refresh_token;
}