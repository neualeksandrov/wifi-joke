while true; do 
  nmcli radio wifi off && nmcli radio wifi on
  RND=`seq .8 .01 1 | shuf | head -n1`
  RND+="m"
  sleep $RND
  echo $RND 
done

