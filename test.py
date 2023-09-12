import argparse
parser = argparse.ArgumentParser()
parser.add_argument('--shutdown')
args = parser.parse_args()


print(args.shutdown)
