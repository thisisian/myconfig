xmodmap ~/.Xmodmap & 
while true; do
    xsetroot -name "$(~/.config/myconfig/batt.sh)$( date +"%F %R" )"
    sleep 10s
done &
exec xsetroot -solid Gray20 &
feh --randomize --recursive --bg-tile ~/docs/bg &
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 1.0
wmname LG3D &
eval $(ssh-agent) &
exec dwm
