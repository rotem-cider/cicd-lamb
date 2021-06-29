import sys
import os

print("Running shell")

os.system('sh ./rce.sh CHECKOV')

sys.exit("DONE!")
