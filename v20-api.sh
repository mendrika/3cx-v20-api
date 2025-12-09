#!/bin/bash
set +H
# the https link to your 3CX
URL=$(echo $1)

# the username, for v20 it is a system owner extension number
USER=$(echo $2)

# the extension password
PASS=$(echo $3)

# unused variable (the former v18 script needed this variable , not the v20)
NOM=$(echo $4)

#
# generate the token (Bearer) = API token
#
cd /var/lib/zabbix/scripts/ 
TOKEN=$(wget --quiet  --method=POST "$URL/webclient/api/Login/GetAccessToken" --header="Content-Type: application/json" --body-data="{\"SecurityCode\": \"\", \"Password\": \"$PASS\", \"Username\": \"$USER\"}" --output-document=- | jq -r '.Token.access_token')
#
# now fetch and echo the SystemStatus (json object)
#
RESULTAT=$(wget --quiet --method=GET --header="Authorization: Bearer $TOKEN" --output-document=- "$URL/xapi/v1/SystemStatus" |jq)
echo $RESULTAT |jq
