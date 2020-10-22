# script to test the API gateway to ensure that the gateway is setup correctly.

ENVIRONMENT=proddemo

if [ "$1" != "" ]; then
	ENVIRONMENT=$1
fi

ENVIRONMENT_DOMAIN=`printf '%s%s' $ENVIRONMENT .foliofn.com`
echo $ENVIRONMENT_DOMAIN
HOSTNAME=`echo dwpapi.$ENVIRONMENT_DOMAIN`

CURLOPTS='-so /dev/null -w %{time_namelookup},%{time_connect},%{time_appconnect},%{time_pretransfer},%{time_redirect},%{time_starttransfer},%{time_total} '

# put in the brands here that you want to test for
BRANDS='align
climb
firstaffirmative
'

# put in the hosts here that you want to test for
HOSTS='dwp
align
climb
'

# for HOST in $HOSTS
# do
	# url=`echo https://$HOSTNAME/appsettings?hostname=$HOST.$ENVIRONMENT_DOMAIN`
	# curl $CURLOPTS $url
# done

echo brand, url, time_namelookup, time_connect, time_appconnect, time_pretransfer, time_redirect, time_starttransfer, time_total
for BRAND in $BRANDS
do
	APIGATEWAYURLS=`cat << EOF
https://$HOSTNAME/menus?brand=$BRAND
https://$HOSTNAME/programlist?brand=$BRAND
https://$HOSTNAME/security?brand=$BRAND
https://$HOSTNAME/billing-plan?brand=$BRAND
https://$HOSTNAME/charts?brand=$BRAND
https://$HOSTNAME/content?brand=$BRAND
https://$HOSTNAME/enabled?brand=$BRAND
https://$HOSTNAME/exclusions-inclusions?brand=$BRAND
https://$HOSTNAME/goal-types?brand=$BRAND
https://$HOSTNAME/header-config?brand=$BRAND
https://$HOSTNAME/header-config?brand=$BRAND
https://$HOSTNAME/risk-levels?brand=$BRAND
https://$HOSTNAME/transfer-money?brand=$BRAND
https://$HOSTNAME/menus?brand=$BRAND
https://$HOSTNAME/program-config?brand=$BRAND
https://$HOSTNAME/api-keys?brand=$BRAND
https://$HOSTNAME/all-firms-config
https://$HOSTNAME/firm-conf?brand=$BRAND
https://$HOSTNAME/account-create-config?brand=$BRAND
https://$HOSTNAME/questionnaire-config?brand=$BRAND
https://$HOSTNAME/questionnaire-content?brand=$BRAND
EOF`

	for url in $APIGATEWAYURLS
	do
		results=`curl $CURLOPTS $url`
		echo $BRAND, $url, $results
	done
done
