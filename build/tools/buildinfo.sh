#!/bin/bash

echo ""
echo "# begin potato build properties"
echo "# autogenerated by buildinfo.sh (potato)"

echo "ro.potato.device=$POTATO_DEVICE"
echo "ro.potato.dish=$POTATO_DISH"
echo "ro.potato.version=$POTATO_VERNUM"
echo "ro.build.project=potato"

echo "# end potato build properties"
