#!/bin/bash
status() {

	if ACPI_OUTPUT="$(acpi -b)" 2>/dev/null; then
	    if echo "$ACPI_OUTPUT" | grep -o "Charging" >/dev/null; then
		echo -n " C:"
	    	echo -n "$(echo "$ACPI_OUTPUT" | grep -o -m 1 '[0-9]*%') | "
	    elif echo "$ACPI_OUTPUT" | grep -o "Discharging" >/dev/null; then
		echo -n " D:"
	    	echo -n "$(echo "$ACPI_OUTPUT" | grep -o -m 1 '[0-9]*%') | "
	    fi
	fi
	echo -n "$(date +"%F %R")"
}

for (( ; ; ))
do
	somebar -c status "$(status)"
	sleep 5
done

