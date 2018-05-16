#!/bin/bash

if OUTPUT="$(acpi -b)" >/dev/null; then
    if echo $OUTPUT | grep -o "Charging" >/dev/null; then
        echo -n "C:"
    elif echo $OUTPUT | grep -o "Discharging" >/dev/null; then
        echo -n "D:"
    fi
    echo $OUTPUT | grep -o '[0-9]*%'
fi
