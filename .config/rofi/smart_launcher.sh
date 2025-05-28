#!/bin/bash

input="$1"

# Librewolf
# BROWSER="librewolf"

# Zen
BROWSER="app.zen_browser.zen"

UNDUCK_SEARCH_URL="https://unduck.link/?q="
if [[ "$input" == *"!"* ]]; then
    # Extract the prompt (text before the last "!")
    prompt_text="${input%%!*}"
    # Extract the suffix code (text after the last "!")
    suffix_code="${input##*!}"
else
    prompt_text="$input"
    suffix_code=""
fi

# --- Action Dispatch ---

flatpak run "$BROWSER" "${UNDUCK_SEARCH_URL}${input}"

# we will rely on unduck for now
# case "$suffix_code" in
#     t3) 
#         "$BROWSER" "${UNDUCK_SEARCH_URL}${input}"
#         ;;
#
# esac
