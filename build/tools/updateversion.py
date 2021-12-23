#!/usr/bin/env python3

import json
import sys

CUSTOM_VENDOR_DIR = os.environ['CUSTOM_VENDOR_DIR'].strip()

def main():
    if len(sys.argv) < 2:
        sys.stderr.write('ERROR: You must provide a query!\n')
        sys.exit(1)

    build_num = sys.argv[1]
    data = {}
    with open("%s/version.json" % CUSTOM_VENDOR_DIR, "r") as read_file:
        data = json.load(read_file)

    data['version'] = data['version'].split('+')[0] + '+' + build_num
    with open("%s/version.json" % CUSTOM_VENDOR_DIR, "w") as write_file:
        write_file.write(json.dumps(data, indent=8))


if __name__ == '__main__':
    main()
