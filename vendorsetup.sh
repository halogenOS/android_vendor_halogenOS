
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

export CUSTOM_VENDOR_DIR="$(realpath --relative-to="$TOP" "$CUSTOM_VENDOR_DIR")"

export ROM_VERSION="$( (xmlstarlet sel -t -v "/manifest/remote[@name='XOS']/@revision" "$TOP/.repo/manifests/snippets/XOS.xml" | sed -e 's/refs\/heads\///') || \
                        (repo branch | grep '^\*' | awk '{ print $2 }') )"
