
script_dir=$(dirname "$0")
export CUSTOM_VENDOR_DIR="$script_dir"

source "$CUSTOM_VENDOR_DIR/build/envsetup.sh"

XOS_TOOLS_SCRIPT="external/xos/xostools/xostools.sh"
if [ -f $XOS_TOOLS_SCRIPT ]; then
    source $XOS_TOOLS_SCRIPT
fi

export TOP="$(pwd)"

