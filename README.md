# Pipelines
Pipeline support for excamera

Dependencies:

	autoconf & awscli
	$ pip install autoconf
	$ pip install awscli

Enviroment Variables:

You have to set the following variables

	"AWS_ACCESS_KEY_ID", 
	"AWS_SECRET_ACCESS_KEY",
	"ROLE"   - This is the role that the lambda will assume when running.

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

File "SampleOutput.md" has a sample execution
