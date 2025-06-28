#!/bin/bash
status() {

	if ACPI_OUTPUT="$(acpi -b)" 2>/dev/null; then
            OK_BATTERY="$(echo "$ACPI_OUTPUT" | grep -v "rate information unavailable")"
	    if echo "$OK_BATTERY" | grep -o "Charging" >/dev/null; then
		echo -n " C:"
	    	echo -n "$(echo "$OK_BATTERY" | grep -o -m 1 '[0-9]*%') | "
	    elif echo "$OK_BATTERY" | grep -o "Discharging" >/dev/null; then
		echo -n " D:"
	    	echo -n "$(echo "$OK_BATTERY" | grep -o -m 1 '[0-9]*%') | "
	    fi
	fi
	echo -n "$(date +"%F %R")"
}

sleep 2

for (( ; ; ))
do
	somebar -c status "$(status)"
	sleep 5
done

