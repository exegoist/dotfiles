#!/usr/bin/env bash

CACHE_FILE="/tmp/tmux_wttr.cache"
TTL=900 # 15 minutes in seconds

# Check if cache exists and is fresh
if [ -f "$CACHE_FILE" ] && [ $(( $(date +%s) - $(date -r "$CACHE_FILE" +%s) )) -lt $TTL ]; then
    cat "$CACHE_FILE"
else
    # Fetch new data, clean up potential error outputs, and save to cache
    WEATHER=$(curl -s "wttr.in/?format=3" 2>/dev/null)

    if [[ -n "$WEATHER" && ! "$WEATHER" =~ "Unknown" && ! "$WEATHER" =~ "html" ]]; then
        echo "$WEATHER" > "$CACHE_FILE"
        echo "$WEATHER"
    else
        # Fallback to expired cache if offline/error occurs
        [ -f "$CACHE_FILE" ] && cat "$CACHE_FILE" || echo "N/A"
    fi
fi

