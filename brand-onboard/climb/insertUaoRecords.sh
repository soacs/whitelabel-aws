#!/usr/bin/env bash

echo "Insert AccountCreateConfig in SBX"

aws dynamodb put-item --table-name "AccountCreateConfig" --item file://../../../../dynamodb-records/climb/sbx/AccountCreateConfig.json
