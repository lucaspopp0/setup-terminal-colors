#!/bin/bash -eux

if [[ "${GITHUB_ACTIONS-false}" == "true" ]]; then
    export TERM="${TERM-xterm}"
fi

if [[ -z "${GITHUB_OUTPUT-}" ]]; then
    export GITHUB_OUTPUT="/dev/null"
fi

echo "Available commands:"

# -------------------------
# Basic formatting commands
# -------------------------
RESET=$(tput sgr0)
echo "RESET=$RESET" >> "$GITHUB_OUTPUT"
echo " - RESET"

BOLD=$(tput bold)
echo "BOLD=$BOLD" >> "$GITHUB_OUTPUT"
echo -e " - ${BOLD}BOLD${RESET}"

exit 0

UNDERLINE=$(tput smul)
echo "UNDERLINE=$UNDERLINE" >> "$GITHUB_ENV"
echo -e " - ${UNDERLINE}UNDERLINE${RESET}"

# ----------
# Grayscales
# ----------
BLACK=$(tput setaf 0)
echo "BLACK=$BLACK" >> "$GITHUB_ENV"
echo -e " - ${BLACK}BLACK${RESET}"

GRAY=$(tput setaf 244)
echo "GRAY=$GRAY" >> "$GITHUB_ENV"
echo -e " - ${GRAY}GRAY${RESET}"

WHITE=$(tput setaf 231)
echo "WHITE=$WHITE" >> "$GITHUB_ENV"
echo -e " - ${WHITE}WHITE${RESET}"

# ----------------
# Reds and yellows
# ----------------
RED=$(tput setaf 196)
echo "RED=$RED" >> "$GITHUB_ENV"
echo -e " - ${RED}RED${RESET}"

ORANGE=$(tput setaf 202)
echo "ORANGE=$ORANGE" >> "$GITHUB_ENV"
echo -e " - ${ORANGE}ORANGE${RESET}"

GOLD=$(tput setaf 220)
echo "GOLD=$GOLD" >> "$GITHUB_ENV"
echo -e " - ${GOLD}GOLD${RESET}"

YELLOW=$(tput setaf 226)
echo "YELLOW=$YELLOW" >> "$GITHUB_ENV"
echo -e " - ${YELLOW}YELLOW${RESET}"

# ----------------
# Greens and blues
# ----------------
LIME=$(tput setaf 46)
echo "LIME=$LIME" >> "$GITHUB_ENV"
echo -e " - ${LIME}LIME${RESET}"

GREEN=$(tput setaf 40)
echo "GREEN=$GREEN" >> "$GITHUB_ENV"
echo -e " - ${GREEN}GREEN${RESET}"

TEAL=$(tput setaf 37)
echo "TEAL=$TEAL" >> "$GITHUB_ENV"
echo -e " - ${TEAL}TEAL${RESET}"

CYAN=$(tput setaf 14)
echo "CYAN=$CYAN" >> "$GITHUB_ENV"
echo -e " - ${CYAN}CYAN${RESET}"

BLUE=$(tput setaf 27)
echo "BLUE=$BLUE" >> "$GITHUB_ENV"
echo -e " - ${BLUE}BLUE${RESET}"

PURPLE=$(tput setaf 55)
echo "PURPLE=$PURPLE" >> "$GITHUB_ENV"
echo -e " - ${PURPLE}PURPLE${RESET}"

PINK=$(tput setaf 205)
echo "PINK=$PINK" >> "$GITHUB_ENV"
echo -e " - ${PINK}PINK${RESET}"
