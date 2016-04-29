# Pipelines
Pipeline support for excamera

Dependencies:

	automake, autoconf & awscli
	$ (Linux) : sudo apt-get install autoconf
	$ pip install awscli
	$ (OS X) : brew install autoconf && brew install automake

Enviroment Variables:

You have to set the following variables

	"AWS_ACCESS_KEY_ID", 
	"AWS_SECRET_ACCESS_KEY",
	"ROLE"   - This is the ARN of the role that the lambda will assume when running.
	"LAMBDA_NAME" - The name of the lambda

You need to have a adminuser profile in ~/.aws/credentials

To build:

	$ ./autogen.sh
	$ ./configure
	$ make clean
	$ make build
	$ make lambdainstall
	$ make check

To update:
	
	$ make build
	$ make updateinstall
	$ make check

To clean tmp files before commiting to git:

	$ ./clean.sh
File "SampleOutput.md" has a sample execution
