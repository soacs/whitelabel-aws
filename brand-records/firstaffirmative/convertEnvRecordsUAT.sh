#!/usr/bin/env bash

BRAND=$1
SOURCE=$2
TARGET=$3

echo 'Updating all '$TARGET' records with '$SOURCE' values for '$BRAND''

cat ../../table_name_list | \
while read -r name; do
 cp ../../../../dynamodb-records/$BRAND/$SOURCE/$name.json ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 if [ $TARGET='uat' ]
  then
    sed -i.bak -e 's/dwp.'$SOURCE'aws.foliofn.com/'$TARGET'.dwsp.firstaffirmative.com/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/verification.eapaws.foliofn.com/uatverification.folioidentity.com/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
  fi
 echo 'Changing '$SOURCE' to '$TARGET' on a record level for tablename = ' $name
 sed -i.bak -e 's/'$SOURCE'aws/'$TARGET'aws/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 sed -i.bak -e 's/roboDev/uatNodeKey/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 sed -i.bak -e 's/'$SOURCE'.folioclient/'$TARGET'.folioclient/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 sed -i.bak -e 's/'$SOURCE'.folioinstitutional/'$TARGET'.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 sed -i.bak -e 's/'$SOURCE'.foliofn/'$TARGET'.foliofn/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
done

rm  ../../../../dynamodb-records/$BRAND/$TARGET/*.bak

