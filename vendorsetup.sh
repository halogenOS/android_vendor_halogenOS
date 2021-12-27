
if [ -z "$CUSTOM_VENDOR_DIR" ]; then
    script_dir=$(dirname "$0")
    export CUSTOM_VENDOR_DIR="$script_dir"
fi

source "$CUSTOM_VENDOR_DIR/build/envsetup.sh"

XOS_TOOLS_SCRIPT="external/xos/xostools/xostools.sh"
if [ -f $XOS_TOOLS_SCRIPT ]; then
    source $XOS_TOOLS_SCRIPT
fi

if [ -z "$TOP" ]; then
    export TOP="$(pwd)"
fi

