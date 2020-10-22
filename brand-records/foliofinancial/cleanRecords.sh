
#!/usr/bin/env bash

BRAND='foliofinancial'
ENV=$1

echo 'Clean dynamodb-records directory for '$BRAND' and '$ENV''
rm  ../../../../dynamodb-records/$BRAND/$ENV/*.json

