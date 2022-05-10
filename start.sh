#!/bin/bash
echo 'watching config'

/usr/local/bin/mkdocs serve --dev-addr=0.0.0.0:8000 --dirtyreload & > /dev/null

while inotifywait -e close_write /docs/mkdocs.yml
do 
  echo "file changed"
  PIDS=$(ps aux | grep mkdocs | grep -v grep | awk '{print $1}' | xargs)
  echo "PIDS: ${PIDS}"
  
  kill -9 $(ps aux | grep mkdocs | grep -v grep | awk '{print $1}' | xargs)
  /usr/local/bin/mkdocs serve --dev-addr=0.0.0.0:8000 --dirtyreload & > /dev/null
  echo 'reloaded' > /dev/stdout
done


