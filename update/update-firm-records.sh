
#!/usr/bin/env bash


echo "insert or update firm records into dynamodb tables"
ENV=$1
BRAND=$2

cat ../table_name_list | \
while read -r name; do
 aws dynamodb  put-item --table-name $name  --region us-east-1  --item  file://../../../dynamodb-records/$BRAND/$ENV/$name.json
done

echo 'Finished inserting or updating All Firm Records = ' + $BRAND