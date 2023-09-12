import argparse
parser = argparse.ArgumentParser()
parser.add_argument('-c', '--shutdown')
args = parser.parse_args()


print(args.shutdown)
