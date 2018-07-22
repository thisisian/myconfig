xmodmap ~/.Xmodmap & 
while true; do
    xsetroot -name "$(~/.config/myconfig/batt.sh)$( date +"%F %R" )"
    sleep 10s
done &
exec xsetroot -solid Gray20 &
feh --randomize --recursive --bg-tile ~/docs/bg &
eval $(ssh-agent) &
exec dwm
