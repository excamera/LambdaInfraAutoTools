from sign_invoke import invokeLambda
import json

(output, ret_code)=invokeLambda('Helloworldv1')
output = json.loads(output)
if output['output'] == "Hello World" and ret_code == 200:
	print "Invocation Success"
else:
	print "Invocation Error" 
