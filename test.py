import argparse

parser = argparse.ArgumentParser(description="Test script")
parser.add_argument("test", choices=["start", "shutdown"], help="Specify 'start' or 'shutdown'")
args = parser.parse_args()

if args.test == "shutdown":
   print("The sensor will be shutdown")
elif args.test == "start":
   print("The sensor will be started")
