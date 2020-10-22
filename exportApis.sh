
#!/usr/bin/env bash

echo 'Export APIs'

aws apigateway get-rest-apis | grep "id" | \
awk '{print $2}' | sed 's/,//' | sed 's/"//g' | \
while read -r name; do
echo $name
aws apigateway get-export --parameters extensions='apigateway' --rest-api-id $name --stage-name dap --export-type swagger ./output/api-code/$name.json
done
