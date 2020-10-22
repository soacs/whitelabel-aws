#!/usr/bin/env bash


aws --region "us-east-1" dynamodb update-item --table-name AccountCreateConfig \
    --key file://key.json \
    --update-expression 'SET #showCategory = :showCategory' \
    --expression-attribute-names '{"#showCategory": "createAccountPostLoginConfig[0].showCategory"}' \
    --expression-attribute-values '{":showCategory":{"BOOL":false}}' \
    --return-values ALL_NEW


