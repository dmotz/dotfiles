alias whereami 'curl -s https://geo.risk3sixty.com/me | jq ". | .city, .region" -r'

alias nicejson "jq '.' | bat -l json"
