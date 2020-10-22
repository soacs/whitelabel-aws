
#!/usr/bin/env bash

firmOID='576460757232520748'
firmId='IPFINAADPMQNQIRK'
billingPlanId='2449958202218647118'
brand='getinvestmentadvice'
hostname='getinvestmentadvice.sbxaws.foliofn.com'
theme='LIGHT-INVESTMENT-ADVICE'
appId='getinvestmentadvice'
firmName= 'IP Financial Advisory Services'
programTag='GETINVESTMENTADVICE_BE'
partnerCode='IPFINANCIALADVISOR'


echo "Brand AppSettings in place - hostname  firmOID  Theme"
sed -i.bak -e "s/1152921507891285568/"$firmOID"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json
sed -i.bak -e "s/LIGHT-CLIMB/"$theme"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json
sed -i.bak -e "s/Climb/Get Investment Advice/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json
sed -i.bak -e "s/demo.climbinv.com/getinvestmentadvice.com/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/AppSettings.json


echo 'Brand BillingPlan in place , billingPlanId firmId memberNumber'
sed -i.bak -e "s/2233785418460204641/"$billingPlanId"/g"../../../../dynamodb-records/getinvestmentadvice/sbx/BillingPlan.json
sed -i.bak -e "s/CLIMBILUAHZWABYZ/"$firmId"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/BillingPlan.json


echo 'Replace brand in all records in place'
cat table_name_list | \
while read -r name; do
 echo $name
 sed -i.bak -e "s/CLIMB Investment Strategies/IP Financial Advisory Services/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/Climb Digital Advisor/"$brand"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/CLIMBINVESTMENTADVISOR/IPFINANCIALADVISOR/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/Climb Group/"$firmName"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/Climb Bespoke/Get Investment Advice Bespoke/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/climb/"$brand"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/climb/"$brand"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/Climb/"$brand"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/CLIMB_BE/"$programTag"/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
 sed -i.bak -e "s/CLIMB/GETINVESTMENTADVICE/g" ../../../../dynamodb-records/getinvestmentadvice/sbx/$name.json
done

echo 'remove all bkp files'

rm ../../../../dynamodb-records/getinvestmentadvice/sbx/*.bak
