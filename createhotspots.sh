  COUNTER=1
  while [ $COUNTER -lt 101 ]; do
    nmcli dev wifi hotspot ifname wlp4s0 ssid hotspot$COUNTER con-name hotspot$COUNTER password "hotspothotspot" && sleep 1
    let COUNTER=COUNTER+1
  done
