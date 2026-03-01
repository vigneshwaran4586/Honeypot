#!/bin/bash

cat << "EOF"

        ██╗  ██╗ ██████╗ ███╗   ██╗███████╗██╗   ██╗
        ██║  ██║██╔═══██╗████╗  ██║██╔════╝╚██╗ ██╔╝
        ███████║██║   ██║██╔██╗ ██║█████╗   ╚████╔╝
        ██╔══██║██║   ██║██║╚██╗██║██╔══╝    ╚██╔╝
        ██║  ██║╚██████╔╝██║ ╚████║███████╗   ██║
        ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝   ╚═╝

                            Author : Vignesh Waran

                🍯  H O N E Y P O T  🍯

        Monitoring... Logging... Trapping...

EOF
echo "--------------------------------------------------------------"

PORT=2222
LOGFILE="honeypot_logs.txt"

echo "🐝 Honeypot Started on Port $PORT..."
echo "Logs will be saved in $LOGFILE"
echo "-----------------------------------"

while true
do
    echo "Waiting for connection..."
    
    nc -lvnp $PORT 2>&1 | while read line
    do
        echo "$(date) - $line" >> $LOGFILE
    done
done
