#!/bin/bash
set -euo pipefail

C_BLACK_FG="\e[30m"
C_RED_FG="\e[31m"
C_GREEN_FG="\e[32m"
C_BROWN_FG="\e[33m"
C_BLUE_FG="\e[34m"
C_PURPLE_FG="\e[35m"
C_CYAN_FG="\e[36m"
C_LIGHT_GRAY_FG="\e[37m"

C_BLACK_BG="\e[40m"
C_RED_BG="\e[41m"
C_GREEN_BG="\e[42m"
C_BROWN_BG="\e[44m"
C_BLUE_BG="\e[44m"
C_PURPLE_BG="\e[45m"
C_CYAN_BG="\e[46m"
C_LIGHT_GRAY_BG="\e[47m"

C_RESET="\e[0m"

echo -e "${C_RED_FG}Red"
echo -e "${C_GREEN_FG}Green"
echo -e "${C_BLUE_FG}Blue"
echo -e "${C_PURPLE_FG}Purple"
echo -e "${C_CYAN_FG}Cyan"
echo -e "${C_LIGHT_GRAY_FG}Light Gray"
echo -e "${C_RESET}"
