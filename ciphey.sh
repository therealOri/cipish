
#!/usr/bin/bash

clear
if (docker image ls &> /dev/null ); then
    echo "Running Ciphey..."
    echo ""
    echo "Examples: "
    echo "-t aGVsbG8gbXkgbmFtZSBpcyBiZWU="
    echo "--help"
    echo ""
    echo ""
    read -p $'\e[34mCommand: \e[0m' ciphey_command
    clear
    docker run -it --rm remnux/ciphey ${ciphey_command}
else
    echo "Starting docker & running Ciphey..."
    echo ""
    echo "Examples: "
    echo "-t aGVsbG8gbXkgbmFtZSBpcyBiZWU="
    echo "--help"
    echo ""
    echo ""
    sudo systemctl start docker
    read -p $'\e[34mCommand: \e[0m' cophey_command
    clear
    docker run -it --rm remnux/ciphey ${ciphey_command}
fi
