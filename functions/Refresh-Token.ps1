function Refresh-Token {
    [cmdletBinding()]
    param (
        [string]$APIKey
    )
    $TokenURI = "https://api.ecobee.com/token";
    $TokenRequest = "grant_type=ecobeePin&code=$($Global:refresh_token)&client_id=$APIKey";
    Invoke-RestMethod -Method Post -Uri $TokenURI -Body $TokenRequest;
}