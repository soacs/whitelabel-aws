
#!/usr/bin/env bash

echo 'Update tables by replacing SBX with DAP values'

cat table_name_list | \
while read -r name; do
 echo ' changing SBX to DAP in tablename = ' $name
 cat ./output/dynamodb-tables/$name.json | sed 's/sbxaws/dapaws/g'  > ./output/dynamodb-tables/$name.json.1
 rm  ./output/dynamodb-tables/$name.json
 mv  ./output/dynamodb-tables/$name.json.1 ./output/dynamodb-tables/$name.json
done

