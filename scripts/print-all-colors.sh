#!/bin/bash -eu

if [[ "${GITHUB_ACTIONS-false}" == "true" ]]; then
    export TERM="${TERM-xterm}"
fi

fg(){
    for c; do
        if [[ "$1" != "$c" ]]; then
            printf '%s' '|'
        fi

        tput setaf "$c"
        printf '%03d' "$c"
        tput sgr0
    done
    
    echo ""
}

bg(){
    for c; do
        if [[ "$1" != "$c" ]]; then
            printf '%s' '|'
        fi

        tput setab "$c"
        printf '%03d' "$c"
        tput sgr0
    done
    
    echo ""
}

IFS=$' \t\n'

tput bold
echo "FOREGROUND"
tput sgr0

echo " STANDARD COLORS (0-7)"
echo -n "  "
fg {0..7}

echo ""
echo " HIGH INTENSITY COLORS (8-15)"
echo -n "  "
fg {8..15}

echo ""
echo " FANCY COLORS (16-231)"
for ((i=0;i<6;i++)); do
    echo -n "  "
    fg $(seq $((i*36+16)) $((i*36+51)))
done

echo ""
echo " GRAYSCALE COLORS (232-255)"
echo -n "  "
fg {232..255}

tput bold
echo "BACKGROUND"
tput sgr0

echo " STANDARD COLORS (0-7)"
echo -n "  "
bg {0..7}

echo ""
echo " HIGH INTENSITY COLORS (8-15)"
echo -n "  "
bg {8..15}

echo ""
echo " FANCY COLORS (16-231)"
for ((i=0;i<6;i++)); do
    echo -n "  "
    bg $(seq $((i*36+16)) $((i*36+51)))
done

echo ""
echo " GRAYSCALE COLORS (232-255)"
echo -n "  "
bg {232..255}
