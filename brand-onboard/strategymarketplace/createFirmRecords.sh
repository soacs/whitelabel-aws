
#!/usr/bin/env bash

firmOID='144115190947397885'
firmId='CAPITADIHUULNPLY'
billingPlanId='3963167674957578524'
brand='strategymarketplace'
hostname='strategymarketplace.sbxaws.foliofn.com'
theme='LIGHT-STRATEGY-MARKETPLACE'
appId='strategymarketplace'


echo "Brand AppSettings in place - hostname  firmOID  Theme"
sed -i.bak -e "s/4971973991284573644/"$firmOID"/g" ../../../../dynamodb-records/strategymarketplace/sbx/AppSettings.json
sed -i.bak -e "s/LIGHT-VIOLET-THEME/"$theme"/g" ../../../../dynamodb-records/strategymarketplace/sbx/AppSettings.json

echo 'Brand BillingPlan in place , billingPlanId firmId memberNumber'
sed -i.bak -e "s/360287972857185771/"$billingPlanId"/g"../../../../dynamodb-records/strategymarketplace/sbx/BillingPlan.json
sed -i.bak -e "s/EARTHENPGMBUVEEI/"$firmId"/g" ../../../../dynamodb-records/strategymarketplace/sbx/BillingPlan.json


echo 'Replace brand in all records in place'
cat table_name_list | \
while read -r name; do
 echo $name
 sed -i.bak -e "s/align/"$brand"/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json
 sed -i.bak -e "s/align/"$brand"/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json
 sed -i.bak -e "s/align/"$brand"/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json
 sed -i.bak -e "s/Earth Equity Advisors/"$brand"/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json
 sed -i.bak -e "s/EARTHEQUITYADVISOR/CAPITADIHUULNPLY/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json

 sed -i.bak -e "s/Align/"$brand"/g" ../../../../dynamodb-records/strategymarketplace/sbx/$name.json
done

echo 'remove all bkp files'

rm ../../../../dynamodb-records/strategymarketplace/sbx/*.bak