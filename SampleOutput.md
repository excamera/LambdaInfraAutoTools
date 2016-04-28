rbhalera@vm132:~$ source ~/.bashrc
rbhalera@vm132:~$ cd Pipelines/
rbhalera@vm132:~/Pipelines$ make clean
Making clean in src
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
 rm -f helloworld
 rm -f helloworld
rm -rf .libs _libs
test -z "libhelloworld.a" || rm -f libhelloworld.a
rm -f *.o
rm -f *.lo
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
Making clean in examples
make[1]: Entering directory `/home/rbhalera/Pipelines/examples'
rm -rf .libs _libs
rm -f *.lo
make[1]: Leaving directory `/home/rbhalera/Pipelines/examples'
make[1]: Entering directory `/home/rbhalera/Pipelines'
rm -rf .libs _libs
rm -f *.lo
make[1]: Leaving directory `/home/rbhalera/Pipelines'
rbhalera@vm132:~/Pipelines$ make build
cd src && make  build
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
depbase=`echo helloworld.o | sed 's|[^/]*$|.deps/&|;s|\.o$||'`;\
	gcc -DHAVE_CONFIG_H -I. -I..     -g -O2 -MT helloworld.o -MD -MP -MF $depbase.Tpo -c -o helloworld.o helloworld.c &&\
	mv -f $depbase.Tpo $depbase.Po
/bin/bash ../libtool  --tag=CC   --mode=link gcc  -g -O2 -static  -o helloworld helloworld.o  
libtool: link: gcc -g -O2 -o helloworld helloworld.o 
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
rbhalera@vm132:~/Pipelines$ make lambdainstall
cd src && make  lambdainstall
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
./setuplambda.sh
updating: helloworld (deflated 68%)
updating: handler.py (deflated 33%)

A client error (ResourceConflictException) occurred when calling the CreateFunction operation: Function already exist: Helloworldv1
make[1]: *** [lambdainstall] Error 255
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
make: *** [lambdainstall] Error 2
rbhalera@vm132:~/Pipelines$ make lambdaupdate
cd src && make  lambdaupdate
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
./updatelambda.sh
updating: helloworld (deflated 68%)
updating: handler.py (deflated 33%)
-----------------------------------
|          CreateBucket           |
+-----------+---------------------+
|  Location |  /lambdazipsbucket  |
+-----------+---------------------+
upload: ./helloworld.zip to s3://lambdazipsbucket/helloworld.zip
---------------------------------------------------------------------------------
|                              UpdateFunctionCode                               |
+--------------+----------------------------------------------------------------+
|  CodeSha256  |  JXsiMoYpVuqdqrgCi4Kq1YS9+jKcm5+p1SutfgeRUig=                  |
|  CodeSize    |  4101                                                          |
|  Description |                                                                |
|  FunctionArn |  arn:aws:lambda:eu-west-1:751324341733:function:Helloworldv1   |
|  FunctionName|  Helloworldv1                                                  |
|  Handler     |  handler.handler                                               |
|  LastModified|  2016-04-28T08:32:39.967+0000                                  |
|  MemorySize  |  128                                                           |
|  Role        |  arn:aws:iam::751324341733:role/lambda                         |
|  Runtime     |  python2.7                                                     |
|  Timeout     |  3                                                             |
|  Version     |  $LATEST                                                       |
+--------------+----------------------------------------------------------------+
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
rbhalera@vm132:~/Pipelines$ make check
Making check in src
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
rm -f libhelloworld.a
ar cru libhelloworld.a helloworld.o 
ranlib libhelloworld.a
python ./test_invoke.py
Output : Hello World
Invocation Success
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
Making check in examples
make[1]: Entering directory `/home/rbhalera/Pipelines/examples'
make[1]: Nothing to be done for `check'.
make[1]: Leaving directory `/home/rbhalera/Pipelines/examples'
make[1]: Entering directory `/home/rbhalera/Pipelines'
make[1]: Leaving directory `/home/rbhalera/Pipelines'
cd src && make  check
make[1]: Entering directory `/home/rbhalera/Pipelines/src'
python ./test_invoke.py
Output : Hello World
Invocation Success
make[1]: Leaving directory `/home/rbhalera/Pipelines/src'
rbhalera@vm132:~/Pipelines$ 
