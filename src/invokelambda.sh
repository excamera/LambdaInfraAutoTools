#!/bin/bash

aws lambda invoke \
--invocation-type RequestResponse \
--function-name ${LAMBDA_NAME} \
--payload '{}' \
--region 'eu-west-1' \
--profile adminuser \
/tmp/outputfile.txt 

cat /tmp/outputfile.txt
