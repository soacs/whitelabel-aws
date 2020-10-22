#!/usr/bin/env bash
cat insert_table_name_list | \
while read -r name; do
 aws dynamodb put-item --table-name $name --item file://../output/dynamodb-records/$name.json
done
