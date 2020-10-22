
#!/usr/bin/env bash

echo 'Export white label Firm records'

BRAND='loopinvesting'
ENV='sbx'

echo "Export table with single record: " AppSettings
aws dynamodb get-item --table-name "AppSettings"  --key file://hostname_key_exported.json --region us-east-1 > ../../../../dynamodb-records/$BRAND/$ENV/AppSettings.json
sed -i.bak -e '2d' ../../../../dynamodb-records/$BRAND/$ENV/AppSettings.json
sed -i.bak -e '$d' ../../../../dynamodb-records/$BRAND/$ENV/AppSettings.json

echo "Export table with single record: " Maintenance
aws dynamodb get-item --table-name "Maintenance"  --key file://hostname_key_exported.json --region us-east-1 > ../../../../dynamodb-records/$BRAND/$ENV/Maintenance.json
sed -i.bak -e '2d' ../../../../dynamodb-records/$BRAND/$ENV/Maintenance.json
sed -i.bak -e '$d' ../../../../dynamodb-records/$BRAND/$ENV/Maintenance.json


cat ../../table_name_list | \
while read -r name; do
  if [ $name !=  AppSettings ]  && [ $name !=  Maintenance ]
    then
       echo "Export table with single record: " $name
       aws dynamodb get-item --table-name $name  --key file://brand_key_exported.json --region us-east-1 > ../../../../dynamodb-records/$BRAND/$ENV/$name.json
       sed -i.bak -e '2d' ../../../../dynamodb-records/$BRAND/$ENV/$name.json
       sed -i.bak -e '$d' ../../../../dynamodb-records/$BRAND/$ENV/$name.json
     fi
done

rm ../../../../dynamodb-records/$BRAND/$ENV/*.bak
echo 'Finished Exporting All Firm Records = ' + $BRAND + ' and ENV = ' + $ENV
