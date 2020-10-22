
#!/usr/bin/env bash

echo 'Export white label records'

echo "Export table with single record: " AppSettings
aws dynamodb get-item --table-name "AppSettings"  --key file://hostname_key.json --region us-east-1 > ../../../../dynamodb-records//AppSettings.json
sed -i.bak -e '2d' ../../../../dynamodb-records//AppSettings.json
sed -i.bak -e '$d' ../../../../dynamodb-records//AppSettings.json

cat ./table_name_list | \
while read -r name; do
  if [ $name !=  AppSettings ];
    then
       echo "Export table with single record: " $name
       aws dynamodb get-item --table-name $name  --key file://brand_key.json --region us-east-1 > ../../../../dynamodb-records//$name.json
       sed -i.bak -e '2d' ../../../../dynamodb-records//$name.json
       sed -i.bak -e '$d' ../../../../dynamodb-records//$name.json
     fi
done


echo 'remove all bkp files'

rm ../../../../dynamodb-records//*.bak
echo 'Finished Exporting All Tables.'
