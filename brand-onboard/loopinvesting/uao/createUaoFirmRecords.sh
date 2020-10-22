
#!/usr/bin/env bash

documentAPIPartnerCode='LOOPINVESTINGADVISOR'
brand='loopinvesting'

echo "Brand AccountCreateConfig in place - documentAPIPartnerCode, brand"

sed -i.bak -e "s/CLIMBINVESTMENTADVISOR/"$documentAPIPartnerCode"/g" ../../../../../dynamodb-records/loopinvesting/sbx/AccountCreateConfig.json
sed -i.bak -e "s/climb/"$brand"/g" ../../../../../dynamodb-records/loopinvesting/sbx/AccountCreateConfig.json
sed -i.bak -e "s/#6cbe99/#B117C7/g" ../../../../../dynamodb-records/loopinvesting/sbx/AccountCreateConfig.json

rm ../../../../../dynamodb-records/loopinvesting/sbx/AccountCreateConfig.json.bak

echo 'Finished creating the UAO Record.'
