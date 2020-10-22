
#!/usr/bin/env bash

echo 'Updating all '$TARGET' records with '$SOURCE' values'

BRAND=$1
SOURCE=$2
TARGET=$3


cat ../../table_name_list | \
while read -r name; do
 echo 'Changing '$SOURCE' to '$TARGET' on a record level for tablename = ' $name
 sed -i.bak -e 's/'$SOURCE'aws/'$TARGET'aws/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/'$SOURCE'.folioclient/'$TARGET'.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/'$SOURCE'.folioinstitutional/'$TARGET'.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/'$SOURCE'.foliofn/'$TARGET'.foliofn/g' ../../../../dynamodb-records/$BRAND/$name.json
done


cat ../../table_name_list | \
while read -r name; do
 echo 'Changing SBX to DAP on a record level for tablename = ' $name
 sed -i.bak -e 's/sbxaws/dapaws/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/sbx.folioclient/dap.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/sbx.folioinstitutional/dap.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/sbx.foliofn/dap.foliofn/g' ../../../../dynamodb-records/$BRAND/$name.json

done

rm  ../../../../dynamodb-records/$BRAND/*.bak
cp ../../../../dynamodb-records/$BRAND/*.json ../../../../dynamodb-records/$BRAND/dap

cat ../../table_name_list | \
while read -r name; do
 echo 'Changing DAP to EAP on a record level for tablename = ' $name
 sed -i.bak -e 's/dapaws/eapaws/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/dap.folioclient/eap.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/dap.folioinstitutional/eap.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/dap.foliofn/eap.foliofn/g' ../../../../dynamodb-records/$BRAND/$name.json
done

rm  ../../../../dynamodb-records/$BRAND/*.bak
cp ../../../../dynamodb-records/$BRAND/*.json ../../../../dynamodb-records/$BRAND/eap


cat ../../table_name_list | \
while read -r name; do
 echo 'Changing EAP to UAT on a record level for tablename = ' $name
 sed -i.bak -e 's/eapaws/uataws/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/eap.folioclient/uat.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/eap.folioinstitutional/uat.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/eap.foliofn/uat.foliofn/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/align.eapaws.foliofn.com/uat.invest.alignyourgreen/g' ../../../../dynamodb-records/$BRAND/$name.json
done

rm  ../../../../dynamodb-records/$BRAND/*.bak
cp ../../../../dynamodb-records/$BRAND/*.json ../../../../dynamodb-records/$BRAND/uat


cat ../../table_name_list | \
while read -r name; do
 echo 'Changing UAT to PROD on a record level for tablename = ' $name
 sed -i.bak -e 's/api.uataws/api.proddemo/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/uataws/prodaws/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/uat.folioclient/www.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/uat.folioinstitutional/www.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/uat.foliofn/uat.foliofn/g' ../../../../dynamodb-records/$BRAND/$name.json
 sed -i.bak -e 's/uat.invest.alignyourgreen/invest.alignyourgreen/g' ../../../../dynamodb-records/$BRAND/$name.json
done

rm  ../../../../dynamodb-records/$BRAND/*.bak
cp ../../../../dynamodb-records/$BRAND/*.json ../../../../dynamodb-records/$BRAND/prod


 if [ $TARGET='prod' ]
  then
    sed -i.bak -e 's/'$BRAND'.'$SOURCE'aws.foliofn.com/'$TARGET'.invest.alignyourgreen/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/'$SOURCE'.folioclient/www.folioclient/g' ../../../../dynamodb-records/$BRAND/$name.json
    sed -i.bak -e 's/'$SOURCE'.folioinstitutional/www.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$name.json
    sed -i.bak -e 's/uat.invest.alignyourgreen/invest.alignyourgreen/g' ../../../../dynamodb-records/$BRAND/$name.json
    sed -i.bak -e 's/api.uataws/api.proddemo/g' ../../../../dynamodb-records/$BRAND/$name.json
  fi
 if [ $TARGET='uat' ]
 then
   sed -i.bak -e 's/'$BRAND'.'$SOURCE'aws.foliofn.com/'$TARGET'.invest.alignyourgreen/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 fi
