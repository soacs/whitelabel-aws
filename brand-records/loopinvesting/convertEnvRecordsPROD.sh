#!/usr/bin/env bash

BRAND=$1
SOURCE=$2
TARGET=$3

echo 'Updating all '$TARGET' records with '$SOURCE' values for '$BRAND''

cat ../../table_name_list | \
while read -r name; do
 cp ../../../../dynamodb-records/$BRAND/$SOURCE/$name.json ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
 if [ $TARGET='prod' ]
  then
    echo 'Changing '$SOURCE' to '$TARGET' on a record level for tablename = ' $name
    sed -i.bak -e 's/'$SOURCE'.invest.loopinvesting.com/invest.loopinvesting.com/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/'$SOURCE'.folioclient/www.folioclient/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/'$SOURCE'.folioinstitutional/www.folioinstitutional/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/api.uataws/api.proddemo/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/UA-157148597-1/G-3ZX104CBXQ/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
    sed -i.bak -e 's/UA-157168220-1/UA-157168220-1/g' ../../../../dynamodb-records/$BRAND/$TARGET/$name.json
  fi
done

rm  ../../../../dynamodb-records/$BRAND/$TARGET/*.bak

