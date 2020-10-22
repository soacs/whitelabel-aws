
#!/usr/bin/env bash

echo 'Export white label records'

echo "Export table with single record: " AppSettings
aws dynamodb get-item --table-name "AppSettings"  --key file://hostname_key.json --region us-east-1 > ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json
sed -i.bak -e '2d' ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json
sed -i.bak -e '$d' ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json

cat ./table_name_list | \
while read -r name; do
  if [ $name !=  AppSettings ];
    then
       echo "Export table with single record: " $name
       aws dynamodb get-item --table-name $name  --key file://brand_key.json --region us-east-1 > ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
       sed -i.bak -e '2d' ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
       sed -i.bak -e '$d' ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
     fi
done


echo 'remove all bkp files'

rm ../../../../dynamodb-records/getinvestmentadvice/sbx/*.bak
echo 'Finished Exporting All Tables.'
