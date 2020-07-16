#!/bin/bash

. config.sh

scope="[product:${api_name}/${source_app}]"
fqcn="${scope}${namespace}"

channel=$(echo "$fqcn" | perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"');

json_filename="./payload.json"

# To get the history of messsages for the channel
# curl "https://rest.ably.io/channels/${channel}/messages" -u "$apikey"

while true; do
    clear
    printf "\n\nFQCN: $fqcn"
    printf "\nTimestamp: $(date))"
    printf "\nSleep interval: ${snooze}s"
    printf "\nServer response ...\n\n"

    curl -X POST \
        -H "Content-Type: application/json" \
        -d @$json_filename \
        -u $api_key \
        https://rest.ably.io/channels/${channel}/messages

    sleep $snooze
done
