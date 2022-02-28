
if [ -z "$CUSTOM_VENDOR_DIR" ]; then

    # Use a reliable method to get what shell we're on
    SHELLCHK=$(ps -p $$ | grep 00 | sed 's/.* //g')

    if [[ "${SHELLCHK}" == "zsh" ]]; then
        # Variable setting method specific to zsh
        script_dir=$(dirname "$0")
    elif [[ "${SHELLCHK}" == "bash" ]] || [ -n "$BASH_SOURCE" ]; then
        # Variable setting method specific to bash
        script_dir=$(dirname "${BASH_SOURCE[0]}")
    else
        # Wait, how does this person not have bash or zsh?
        # We don't expect this and what we would have set is an enigma at
        # this point. Try to use zsh method to set it but also warn
        # the maintainer about it.
        echo -e "YOU'RE USING A SHELL OTHER THAN \033[0;31mBASH\033[0m"
        echo -e "OR \033[0;31mZSH\033[0m THIS TYPE OF BEHAVIOR IS"
        echo -e "DISCOURAGED AND YOU'RE **NOT** SUPPOSED TO DO THIS!"
        echo -e "WE'LL BE USING ZSH METHOD TO FIND SCRIPT LOCATION BUT"
        echo -e "KEEP IN MIND THAT IT MIGHT NOT ALWAYS WORK AND IS A"
        echo -e "COMPLETE ENIGMA! YOU HAVE BEEN WARNED!"
        script_dir=$(dirname "$0")
        echo -e "\nScript was found at ${script_dir}.If you think this"
        echo -e "is a mistake, find how your shell handles sourcing"
        echo -e "scripts and send patches to us."
    fi
    export CUSTOM_VENDOR_DIR="$script_dir"
fi

source "$CUSTOM_VENDOR_DIR/build/envsetup.sh"

XOS_TOOLS_SCRIPT="external/xos/xostools/xostools.sh"
if [ -f $XOS_TOOLS_SCRIPT ]; then
    source $XOS_TOOLS_SCRIPT
fi

export TOP="$(pwd)"

export CUSTOM_VENDOR_DIR="$(realpath --relative-to="$TOP" "$CUSTOM_VENDOR_DIR")"

export ROM_VERSION="$( (xmlstarlet sel -t -v "/manifest/remote[@name='XOS']/@revision" "$TOP/.repo/manifests/snippets/XOS.xml" | sed -e 's/refs\/heads\///') || \
                        (repo branch | grep '^\*' | awk '{ print $2 }') )"
