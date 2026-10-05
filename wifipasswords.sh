while true; do
  COUNTER=1
  while [ $COUNTER -lt 101 ]; do
    PWD=`< /dev/urandom tr -dc A-Za-z0-9_ | head -c9`
    SSID=`< /dev/urandom tr -dc A-Za-z0-9_ | head -c9`
    nmcli c modify hotspot$COUNTER wifi-sec.psk $PWD wifi.ssid $SSID
    sleep 1
    let COUNTER=COUNTER+1
  done
done
