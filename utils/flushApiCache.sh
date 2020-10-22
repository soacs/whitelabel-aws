
#!/usr/bin/env bash

echo 'Flushing Cache APIs'

echo 'flushing cache'
aws apigateway get-rest-apis | grep "id" | \
awk '{print $2}' | sed 's/,//' | sed 's/"//g' | \
while read -r name; do
echo $name
aws apigateway flush-stage-cache --rest-api-id $name --stage-name dap
done


