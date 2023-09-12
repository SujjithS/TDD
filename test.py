import argparse
parser = argparse.ArgumentParser()
parser.add_argument('shutdown', 's')
args = parser.parse_args()


print(args.shutdown)
