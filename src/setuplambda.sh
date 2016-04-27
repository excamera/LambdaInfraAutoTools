#!/bin/bash

zip helloworld.zip helloworld handler.py
# aws s3api create-bucket --bucket lambdazipsbucket
# aws s3 cp helloworld.zip s3://lambdazipsbucket
aws lambda create-function --function-name HelloWorld --runtime python2.7 --role ${role} --handler handler.handler --zip-file fileb://./helloworld.zip
