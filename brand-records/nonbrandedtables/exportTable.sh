echo 'Export tables like ErrorMessageMap which is a non branded table'

name=$1
ENV='sbx'

echo "Export table with single record: " $name
aws dynamodb scan --table-name $name  --region us-east-1 > ../../../../dynamodb-records/non-brand/$ENV/$name.json