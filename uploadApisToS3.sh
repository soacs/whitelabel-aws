
#!/usr/bin/env bash

echo 'Upload APIs to S3 on SBX'

aws s3 cp ./output/api-code s3://dwpdeploy/apis --recursive
