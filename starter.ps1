 #$headers = @{"Content-type"="text/json";"Authorization" ="Bearer SBYPx0GkWcf0o9fEuX3zY4Qj8ZEtya12"}
 #$msgbody = @{"selection"=@{"selectionType"="registered";"selectionMatch"="";"includeRuntime"=$true;}}  
 #Invoke-RestMethod -Headers $headers -Uri "https://api.ecobee.com/1/thermostat?format=json&body=$($msgbody|convertto-json -compress)" -Method get|select -expand thermostatList|select -expand runtime
