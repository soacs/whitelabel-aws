
#!/usr/bin/env bash

echo 'Export white label records'

echo "Export table with single record: " AccountCreateConfig
aws dynamodb get-item --table-name "AccountCreateConfig"  --key file://brand_key.json --region us-east-1 > ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json
sed -i.bak -e '2d' ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json
sed -i.bak -e '$d' ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json


echo 'Finished Exporting All Tables.'

