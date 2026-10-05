while true; do
  COUNTER=1
  while [ $COUNTER -lt 101 ]; do
    nmcli connection up hotspot$COUNTER 
    sleep 0.5
    let COUNTER=COUNTER+1
  done
done
