#!/usr/bin/env bash
cat insert_table_name_list | \
while read -r name; do
 echo 'inserting record for table= ' + $name
 aws dynamodb put-item --table-name $name --item file://../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
done
