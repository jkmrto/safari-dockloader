#!/usr/bin/python
import sys
args_list = sys.argv[1].split("/")
args = args_list[-3:-1] if args_list[-1] == "" else args_list[-2:]
print(" ".join(args))
