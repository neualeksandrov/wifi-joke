while true; do
  COUNTER=1
  while [ $COUNTER -lt 101 ]; do
    nmcli connection up hotspot$COUNTER 
    RND=`seq .3 .01 .5 | shuf | head -n1`
    sleep $RND
    let COUNTER=COUNTER+1
  done
done
