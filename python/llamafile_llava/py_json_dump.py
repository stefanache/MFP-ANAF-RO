import json
import sys
json.dump(json.load(sys.stdin), sys.stdout, indent=2)
print()