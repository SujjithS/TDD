import argparse
parser = argparse.ArgumentParser()
parser.add_argument("shutdown", help="display a sensor stater",
                    type=string)
args = parser.parse_args()
print(args.shutdown)
