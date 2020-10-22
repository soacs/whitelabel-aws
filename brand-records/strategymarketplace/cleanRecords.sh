
#!/usr/bin/env bash

BRAND='collaborationcapital'
ENV=$1

echo 'Clean dynamodb-records directory for '$BRAND' and '$ENV''
rm  ../../../../dynamodb-records/$BRAND/$ENV/*.json

