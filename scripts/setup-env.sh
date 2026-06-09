#!/bin/bash -eux

if [[ "${GITHUB_ACTIONS-false}" == "true" ]]; then
    export TERM="${TERM-xterm}"
fi

if [[ -z "${GITHUB_ENV-}" ]]; then
    export GITHUB_ENV="/dev/null"
fi

echo "Available commands:"

# -------------------------
# Basic formatting commands
# -------------------------
RESET=$(tput sgr0)
echo -e "RESET=$RESET" >> "$GITHUB_ENV"
echo " - RESET"

BOLD=$(tput bold)
echo -e "BOLD=$BOLD" >> "$GITHUB_ENV"
echo -e " - ${BOLD}BOLD${RESET}"

UNDERLINE=$(tput smul)
echo -e "UNDERLINE=$UNDERLINE" >> "$GITHUB_ENV"
echo -e " - ${UNDERLINE}UNDERLINE${RESET}"

# ----------
# Grayscales
# ----------
BLACK=$(tput setaf 0)
echo -e "BLACK=$BLACK" >> "$GITHUB_ENV"
echo -e " - ${BLACK}BLACK${RESET}"

GRAY=$(tput setaf 244)
echo -e "GRAY=$GRAY" >> "$GITHUB_ENV"
echo -e " - ${GRAY}GRAY${RESET}"

WHITE=$(tput setaf 231)
echo -e "WHITE=$WHITE" >> "$GITHUB_ENV"
echo -e " - ${WHITE}WHITE${RESET}"

# ----------------
# Reds and yellows
# ----------------
RED=$(tput setaf 196)
echo -e "RED=$RED" >> "$GITHUB_ENV"
echo -e " - ${RED}RED${RESET}"

ORANGE=$(tput setaf 202)
echo -e "ORANGE=$ORANGE" >> "$GITHUB_ENV"
echo -e " - ${ORANGE}ORANGE${RESET}"

GOLD=$(tput setaf 220)
echo -e "GOLD=$GOLD" >> "$GITHUB_ENV"
echo -e " - ${GOLD}GOLD${RESET}"

YELLOW=$(tput setaf 226)
echo -e "YELLOW=$YELLOW" >> "$GITHUB_ENV"
echo -e " - ${YELLOW}YELLOW${RESET}"

# ----------------
# Greens and blues
# ----------------
LIME=$(tput setaf 46)
echo -e "LIME=$LIME" >> "$GITHUB_ENV"
echo -e " - ${LIME}LIME${RESET}"

GREEN=$(tput setaf 40)
echo -e "GREEN=$GREEN" >> "$GITHUB_ENV"
echo -e " - ${GREEN}GREEN${RESET}"

TEAL=$(tput setaf 37)
echo -e "TEAL=$TEAL" >> "$GITHUB_ENV"
echo -e " - ${TEAL}TEAL${RESET}"

CYAN=$(tput setaf 14)
echo -e "CYAN=$CYAN" >> "$GITHUB_ENV"
echo -e " - ${CYAN}CYAN${RESET}"

BLUE=$(tput setaf 27)
echo -e "BLUE=$BLUE" >> "$GITHUB_ENV"
echo -e " - ${BLUE}BLUE${RESET}"

PURPLE=$(tput setaf 55)
echo -e "PURPLE=$PURPLE" >> "$GITHUB_ENV"
echo -e " - ${PURPLE}PURPLE${RESET}"

PINK=$(tput setaf 205)
echo -e "PINK=$PINK" >> "$GITHUB_ENV"
echo -e " - ${PINK}PINK${RESET}"
