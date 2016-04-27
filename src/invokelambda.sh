#!/bin/bash

aws lambda invoke \
--invocation-type RequestResponse \
--function-name Helloworldv1 \
--payload '{}' \
--region 'eu-west-1' \
--profile adminuser \
/tmp/outputfile.txt 

cat /tmp/outputfile.txt
