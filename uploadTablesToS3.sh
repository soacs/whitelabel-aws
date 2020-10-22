
#!/usr/bin/env bash

echo 'Upload DAP tables to S3 on SBX'

aws s3 cp ./output/dynamodb-tables s3://dwpdeploy/dap-tables --recursive

