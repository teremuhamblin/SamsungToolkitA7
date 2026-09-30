#!/usr/bin/env bash
# SamsungToolkitA7 — Build Environment Initializer
# Copyright (c) 2026
# SPDX-License-Identifier: BlueOak-1.0.0

# ================================================
#  FUNCTION: Locate project root
# ================================================
_GET_ROOT()
{
    local TOPFILE="README.md"

    if [ -n "$SRC_DIR" ] && [ -f "$SRC_DIR/$TOPFILE" ]; then
        (cd "$SRC_DIR"; PWD= /bin/pwd)
    else
        if [ -f "$TOPFILE" ]; then
            PWD= /bin/pwd
        else
            local HERE="$PWD"
            local T=
            while [ ! -f "$TOPFILE" ] && [ "$PWD" != "/" ]; do
                cd ..
                T="$(PWD= /bin/pwd -P)"
            done
            cd "$HERE"
            if [ -f "$T/$TOPFILE" ]; then
                echo "$T"
            fi
        fi
    fi
}

# ================================================
#  FUNCTION: croot — go to project root
# ================================================
croot()
{
    if [ -d "$SRC_DIR" ]; then
        if [ "$1" ]; then
            cd "$SRC_DIR/$1"
        else
            cd "$SRC_DIR"
        fi
    else
        echo "ERROR: Root not found. Source buildenv.sh first."
        return 1
    fi
}

# ================================================
#  FUNCTION: run_cmd — execute internal toolkit scripts
# ================================================
run_cmd()
{
    local CMD="$1"

    if [ -x "$SRC_DIR/tools/$CMD.sh" ]; then
        shift
        mkdir -p "$OUT_DIR/logs"
        (set -o pipefail; "$SRC_DIR/tools/$CMD.sh" "$@" |& tee \
            >(sed -r -e "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g" \
            -e "/#/d" > "$OUT_DIR/logs/$CMD-$(date +%Y%m%d_%H%M%S).log"))
        return $?
    else
        echo "ERROR: \"$CMD\" is not a valid internal command."
        echo "Available commands:"
        find "$SRC_DIR/tools" -maxdepth 1 -type f -name "*.sh" -printf "%f\n" | sed "s/.sh//"
        return 1
    fi
}

alias diag="run_cmd diagnostics"
alias boot="run_cmd boot-tools"
alias part="run_cmd partition-tools"

# ================================================
#  ENVIRONMENT EXPORT
# ================================================
SRC_DIR="$(_GET_ROOT)"
if [ ! "$SRC_DIR" ]; then
    echo "ERROR: Cannot locate project root. Source from project root." >&2
    return 1
fi

export SRC_DIR
export OUT_DIR="$SRC_DIR/out"
export TOOLS_DIR="$SRC_DIR/tools"
export DIAG_DIR="$SRC_DIR/diagnostics"
export BOOT_DIR="$SRC_DIR/tools/boot-tools"
export PART_DIR="$SRC_DIR/tools/partition-tools"

mkdir -p "$OUT_DIR" "$OUT_DIR/logs"

# Add tools to PATH
if [[ ":$PATH:" != *":$TOOLS_DIR:"* ]]; then
    export PATH="$TOOLS_DIR:$PATH"
fi

echo "====================================="
echo " SamsungToolkitA7 — Environment Ready"
echo " Root:        $SRC_DIR"
echo " Tools:       $TOOLS_DIR"
echo " Diagnostics: $DIAG_DIR"
echo " Boot Tools:  $BOOT_DIR"
echo " Part Tools:  $PART_DIR"
echo " Logs:        $OUT_DIR/logs"
echo "====================================="

return 0
