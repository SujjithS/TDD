import argparse
parser = argparse.ArgumentParser()
parser.add_argument("shutdown", action='store_true')
parser.add_argument("start", action='store_true')
args = parser.parse_args()

if args.shutdown and not args.start:
  print("The sensor will be shutdown")

elif not args.shutdown and args.start:
  print("The sensor will be shutdown")
  
else:
  parser.error("No argument set or too many. You have to set one argument")
