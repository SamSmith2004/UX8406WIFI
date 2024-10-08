#!/bin/bash

# Function to check if Wi-Fi is disabled
check_wifi() {
    nmcli radio wifi | grep -q "disabled"
}

# Function to enable Wi-Fi
enable_wifi() {
    nmcli radio wifi on
    echo "Wi-Fi has been enabled."
}

# Main loop
while true; do
    if check_wifi; then
        echo "Wi-Fi is disabled. Enabling..."
        enable_wifi
    fi
    sleep 3  # Wait for 5 seconds before checking again
done

