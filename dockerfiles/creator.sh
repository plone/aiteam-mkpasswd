#!/bin/bash

# Color
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"

# Vars
PASSWORD=$(pwgen -s -N 1 -cny 20);
HASH=$(mkpasswd -m sha-512 -s "$PASSWORD")

echo -en "$COL_GREEN Created new user password and SHA512 Hash $COL_RESET \n"
echo ""
echo -en "$COL_RED Please add the Hash to the vault !$COL_RESET \n"
echo -en "$COL_RED Transmit the password in a secure way to the user !$COL_RESET \n"
echo ""
echo -en "$COL_YELLOW User Pasword:$COL_RESET $PASSWORD \n"
echo -en "$COL_YELLOW Hash:$COL_RESET $HASH \n"
echo ""
echo -en "$COL_BLUE Thank you!$COL_RESET \n"
exit 0

