xmodmap ~/.Xmodmap & 
while true; do
    xsetroot -name "`acpi -b | grep -o '[0-9]*%'` | $( date +"%F %R" )"
    sleep 1m
done &
exec xsetroot -solid Gray20 &
feh --randomize --recursive --bg-fill ~/docs/bg &
eval $(ssh-agent) &
exec dwm
