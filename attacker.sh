#!/bin/bash

#!/bin/bash

cat << "EOF"

        █████╗ ████████╗████████╗ █████╗  ██████╗██╗  ██╗███████╗██████╗
       ██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
       ███████║   ██║      ██║   ███████║██║     █████╔╝ █████╗  ██████╔╝
       ██╔══██║   ██║      ██║   ██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
       ██║  ██║   ██║      ██║   ██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
       ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

                                                   Author : Vignesh Waran

                          😈  ATTACKER MODE  😈

                      >>> SYSTEM BREACH INITIATED <<<
EOF
logfiles="attacker_log.txt"
echo "Enter the IP Address :"
read ip
echo "Enter the port number :"
read port
echo "Start your attack..!"
while true
do
    echo "root@CyberSecurity:~#"
    nc $ip $port | while read lines
    do
        echo "$(date) -> $(lines)">>$logfiles
    done

done

