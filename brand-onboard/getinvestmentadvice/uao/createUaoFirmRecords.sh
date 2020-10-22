
#!/usr/bin/env bash

documentAPIPartnerCode='IPFINANCIALADVISOR'
brand='getinvestmentadvice'
signaturePadPenColor='#228FCE'

echo "Brand AccountCreateConfig in place - documentAPIPartnerCode, brand"

sed -i.bak -e "s/COLLABORATIONADVISOR/"$documentAPIPartnerCode"/g" ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json
sed -i.bak -e "s/collaborationcapital/"$brand"/g" ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json
sed -i.bak -e "s/#567991/#228FCE/g" ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json

# rm ../../../../../dynamodb-records/getinvestmentadvice/sbx/AccountCreateConfig.json.bak

echo 'Finished creating the UAO Record.'
