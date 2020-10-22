
#!/usr/bin/env bash

firmOID='1729382261353594749'
firmId='COLLABVPKGHSRYGC'
billingPlanId='233785418460204641'
brand='collaborationcapital'
hostname='collaborationcapital.sbxaws.foliofn.com'
memberNumber='999'
theme='LIGHT-THEME'
appId='climb'
apiKey='QseAbcv9kNydhfYQdT8l'
sharedSecret='Xox8PbZilPVuhocB8GDVyomRmz89Z3LHjlJWDqnH'


echo "Brand AppSettings in place - hostname  firmOID  Theme'
sed -i.bak -e "s/1152921507891285568/"$firmOID"/g" ../output/dynamodb-records/AppSettings.json
sed -i.bak -e "s/LIGHT-THEME/"$theme"/g" ../output/dynamodb-records/AppSettings.json

echo 'Brand BillingPlan in place , billingPlanId firmId memberNumber'
sed -i.bak -e "s/2882303764832727478/"$billingPlanId"/g"../output/dynamodb-records/BillingPlan.json
sed -i.bak -e "s/CLIMBILUAHZWABYZ/"$firmId"/g" ../output/dynamodb-records/BillingPlan.json
sed -i.bak -e "s/999/"$memberNumber"/g" ../output/dynamodb-records/BillingPlan.json


echo 'Replace brand in all records in place'
cat table_name_list | \
while read -r name; do
 echo $name
 sed -i.bak -e "s/climb/"$brand"/g" ../output/dynamodb-records/$name.json
 sed -i.bak -e "s/climb/"$brand"/g" ../output/dynamodb-records/$name.json
 sed -i.bak -e "s/Climb/"$brand"/g" ../output/dynamodb-records/$name.json
 sed -i.bak -e "s/CLIMB/"$brand"/g" ../output/dynamodb-records/$name.json
done




