
#!/usr/bin/env bash

echo 'Copy all SBX exported tables to Stash Dir'

cat table_name_list | \
while read -r name; do
 echo 'copying tablename = ' $name
 cp ./output/dynamodb-tables/$name.json  ../../dynamodb-tables/$name.json
done


