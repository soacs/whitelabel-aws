
#!/usr/bin/env bash


echo 'Export s3://assets-dwp-sbx'
aws s3 cp s3://assets-dwp-sbx ../output/buckets/assets-dwp-sbx --recursive --quiet
echo 'Export s3://assets-align-sbx'
aws s3 cp s3://assets-align-sbx ../output/buckets/assets-align-sbx --recursive --quiet
echo 'Export s3://assets-climb-sbx'
aws s3 cp s3://assets-climb-sbx ../output/buckets/assets-climb-sbx --recursive --quiet
echo 'Export s3://assets-common-sbx'
aws s3 cp s3://assets-common-sbx ../output/buckets/assets-common-sbx --recursive --quiet
echo 'Export s3://assets-foliofinancial-sbx'
aws s3 cp s3://assets-foliofinancial-sbx ../output/buckets/assets-foliofinancial-sbx --recursive --quiet


echo 'Copy assets-dwp-sbx to stash'
cp -r ../output/buckets/assets-dwp-sbx ../../../buckets/assets-dwp-sbx
echo 'Copy assets-align-sbx to stash'
cp -r ../output/buckets/assets-align-sbx ../../../buckets/assets-align-sbx
echo 'Copy assets-climb-sbx to stash'
cp -r ../output/buckets/assets-climb-sbx ../../../buckets/assets-climb-sbx
echo 'Copy assets-common-sbx to stash'
cp -r ../output/buckets/assets-common-sbx ../../../buckets/assets-common-sbx
echo 'Copy assets-foliofinancial-sbx to stash'
cp -r ../output/buckets/assets-foliofinancial-sbx  ../../../buckets/assets-foliofinancial-sbx
