
#!/usr/bin/env bash

BRAND='loopinvesting'
ENV=$1

echo 'Clean dynamodb-records directory for '$BRAND' and '$ENV''
rm  ../../../../dynamodb-records/$BRAND/$ENV/*.json

