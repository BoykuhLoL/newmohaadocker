#!/bin/bash

sleep 1


# Replace Startup Variables
MODIFIED_STARTUP=$(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e ":/mnt/server$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}
