
#!/usr/bin/env bash

BRAND='firstaffirmative'
ENV=$1

echo 'Clean dynamodb-records directory for '$BRAND' and '$ENV''
rm  ../../../../dynamodb-records/$BRAND/$ENV/*.json

