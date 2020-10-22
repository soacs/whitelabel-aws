
#!/usr/bin/env bash

documentAPIPartnerCode='CLIMBINVESTMENTADVISOR'
brand='climb'
signaturePadPenColor='#6cbe99'

echo "Brand AccountCreateConfig in place - documentAPIPartnerCode, brand"

sed -i.bak -e "s/COLLABORATIONADVISOR/"$documentAPIPartnerCode"/g" ../../../../dynamodb-records/climb/sbx/AccountCreateConfig.json
sed -i.bak -e "s/collaborationcapital/"$brand"/g" ../../../../dynamodb-records/climb/sbx/AccountCreateConfig.json
sed -i.bak -e "s/#6cbe99/"$signaturePadPenColor"/g" ../../../../dynamodb-records/climb/sbx/AccountCreateConfig.json

rm ../../../../dynamodb-records/climb/sbx/AccountCreateConfig.json.bak

echo 'Finished creating the UAO Record.'