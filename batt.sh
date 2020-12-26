#!/bin/bash

if OUTPUT="$(acpi -b)" >/dev/null; then
    if echo "$OUTPUT" | grep -o "Charging" >/dev/null; then
        echo -n " C:"
    elif echo "$OUTPUT" | grep -o "Discharging" >/dev/null; then
        echo -n " D:"
    else
        exit 0
    fi
    echo "$(echo "$OUTPUT" | grep -o -m 1 '[0-9]*%') | "
fi
