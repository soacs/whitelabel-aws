
#!/usr/bin/env bash

firmOID='6989586626863834072'
firmId='LOOPINYPBYNNNSOR'
billingPlanId='3819052489195004919'
brand='loopinvesting'
hostname='loopinvesting.sbxaws.foliofn.com'
theme='LIGHT-LOOP-INVESTING'
appId='loopinvesting'
firmName='Loop Investing Technologies LLC'
programTag='LOOPINVESTING_BE'
partnerCode='LOOPINVESTINGADVISOR'


echo "Brand AppSettings in place - hostname  firmOID  Theme"
sed -i.bak -e "s/1152921507891285568/"$firmOID"/g" ../../../../dynamodb-records/loopinvesting/sbx/AppSettings.json
sed -i.bak -e "s/LIGHT-CLIMB/"$theme"/g" ../../../../dynamodb-records/loopinvesting/sbx/AppSettings.json
sed -i.bak -e "s/Climb/Loop Investing/g" ../../../../dynamodb-records/loopinvesting/sbx/AppSettings.json
sed -i.bak -e "s/robo.climb-cap.com/loopinvesting.com//g" ../../../../dynamodb-records/loopinvesting/sbx/AppSettings.json


echo 'Brand BillingPlan in place , billingPlanId firmId memberNumber'
sed -i.bak -e "s/2233785418460204641/"$billingPlanId"/g"../../../../dynamodb-records/loopinvesting/sbx/BillingPlan.json
sed -i.bak -e "s/CLIMBILUAHZWABYZ/"$firmId"/g" ../../../../dynamodb-records/loopinvesting/sbx/BillingPlan.json


echo 'Replace brand in all records in place'
cat table_name_list | \
while read -r name; do
 echo $name
 sed -i.bak -e "s/CLIMB Investment Strategies/Loop Investing Technologies LLC/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/Climb Digital Advisor/"$brand"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/CLIMBINVESTMENTADVISOR/"$partnerCode"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/Climb Group/"$firmName"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/Climb Bespoke/Loop Investing Bespoke/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/climb/"$brand"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/climb/"$brand"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/Climb/"$brand"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/CLIMB_BE/"$programTag"/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
 sed -i.bak -e "s/CLIMB/loopinvesting/g" ../../../../dynamodb-records/loopinvesting/sbx/$name.json
done

echo 'remove all bkp files'

rm ../../../../dynamodb-records/loopinvesting/sbx/*.bak
