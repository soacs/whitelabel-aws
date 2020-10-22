
#!/usr/bin/env bash

echo 'Export Lambda Functions'

aws lambda list-functions | \
grep FunctionName | \
cut -d '"' -f4 | \
while read -r name; do
aws lambda get-function --function-name $name | egrep -o '"https?://[^ ]+' | sed 's/"//g' | xargs curl --output ./output/aws-code/${name}.zip
done

