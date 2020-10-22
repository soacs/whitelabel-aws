name=$1
SOURCE=$2
TARGET=$3

echo 'Updating all '$TARGET' records with '$SOURCE' values'

cp ../../../../dynamodb-records/non-brand/$SOURCE/$name.json ../../../../dynamodb-records/non-brand/$TARGET/$name.json