
#!/usr/bin/env bash
mkdir dynamodb-tables
cat import_table_name_list | \
while read -r name; do
 aws dynamodb scan --table-name $name  --region us-east-1 > ./dynamodb-tables/$name.json
done


