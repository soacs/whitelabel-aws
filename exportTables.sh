
#!/usr/bin/env bash

echo 'Export all tables'

cat table_name_list | \
while read -r name; do
 echo ' exporting tablename = ' $name
 aws dynamodb scan --table-name $name  --region us-east-1 > ./output/dynamodb-tables/$name.json
done


