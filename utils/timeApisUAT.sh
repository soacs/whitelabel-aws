#!/usr/bin/env bash

BRAND=firstaffirmative

echo "BRAND = "$BRAND""
echo "ENVIRONMENT = dwpapi.uataws.foliofn.com"


echo "calling: /menus"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/menus?brand=$BRAND

echo "calling: /programlist"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/programlist?brand=$BRAND

echo "calling: /security"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/security?brand=$BRAND

echo "calling: /billing-plan"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/billing-plan?brand=$BRAND

echo "calling: /charts"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/charts?brand=$BRAND

echo "calling: /content"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/content?brand=$BRAND

echo "calling: /enabled"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/enabled?brand=$BRAND

echo "calling: /exclusions-inclusions"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/exclusions-inclusions?brand=$BRAND

echo "calling: /goal-types"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/goal-types?brand=$BRAND

echo "calling: /header-config"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/header-config?brand=$BRAND

echo "calling: /risk-levels"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/risk-levels?brand=$BRAND

echo "calling: /transfer-money"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/transfer-money?brand=$BRAND

echo "calling: /program-config"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/program-config?brand=$BRAND

echo "calling: /api-keys"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/api-keys?brand=$BRAND

echo "calling: /all-firms-config"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/all-firms-config

echo "calling: /firm-conf"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/firm-conf?brand=$BRAND

echo "calling: /account-create-config"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/account-create-config?brand=$BRAND

echo "calling: /questionnaire-config"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/questionnaire-config?brand=$BRAND

echo "calling: /questionnaire-content"
curl -o /dev/null -s -w 'Total: %{time_total}s\n' https://dwpapi.uataws.foliofn.com/questionnaire-content?brand=$BRAND

