function Get-AuthorizationCode
{
[cmdletBinding()]
Param (
    [string]$APIKey
)
    $AuthUri = "https://api.ecobee.com/authorize?response_type=ecobeePin&client_id=$APIKey&scope=smartWrite";
    $AuthzCodeResponse = Invoke-RestMethod -Uri $AuthUri -Method Get;
    Write-Host "Application PIN is $($AuthzCodeResponse | Select-Object -ExpandProperty ecobeePIN). You must add/authorize this application via your account control panel's My Apps section";
    $AuthzCodeResponse|Select-Object -ExpandProperty code;
}