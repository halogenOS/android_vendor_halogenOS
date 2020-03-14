#!/bin/bash

echo ""
echo "# begin potato build properties"
echo "# autogenerated by buildinfo.sh (potato)"

GET_VERSION="vendor/potato/build/tools/getversion.py"
echo "ro.build.project=potato"
echo "ro.potato.branding.version=$($GET_VERSION buildtype)"
echo "ro.potato.buildtype=$($GET_VERSION buildtype)"
echo "ro.potato.dish=$($GET_VERSION dish)"
echo "ro.potato.vernum=$($GET_VERSION vernum)"
echo "ro.potato.version=$($GET_VERSION version)"
echo "ro.build.datetime=`$DATE +%s`"

echo "# end potato build properties"