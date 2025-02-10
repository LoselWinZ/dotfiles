echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
killall -q polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar top -r 2>&1 | tee -a /tmp/polybar1.log & disown
  done
else
  polybar top -r 2>&1 | tee -a /tmp/polybar1.log & disown
fi

#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
