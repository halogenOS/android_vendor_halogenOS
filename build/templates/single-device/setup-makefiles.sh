#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
# Copyright (C) 2021 The Custom Open Sauce Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=**** FILL IN DEVICE NAME ****
VENDOR=**** FILL IN VENDOR NAME ****

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

CUSTOM_ROOT="${MY_DIR}/../../.."

HELPER="${CUSTOM_ROOT}/$(CUSTOM_VENDOR_DIR)/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${CUSTOM_ROOT}"

# Warning headers and guards
write_headers

write_makefiles "${MY_DIR}/proprietary-files.txt" true

# Finish
write_footers
