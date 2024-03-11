#!/bin/bash

# Get the current hibernatemode setting
OUTPUT="$(pmset -g | grep hibernatemode)"
HIBERNATE3=" hibernatemode        3"
HIBERNATE0=" hibernatemode        0"

# Display the current status
if [ "$OUTPUT" = "$HIBERNATE3" ]; then
    echo "Current Status: Default Clamshell Mode"
    CURRENT_OPTION="1"  # Option 1 corresponds to Default Clamshell Mode
elif [ "$OUTPUT" = "$HIBERNATE0" ]; then
    echo "Current Status: Default Clamshell Mode without Power"
    CURRENT_OPTION="2"  # Option 2 corresponds to Clamshell Mode without Power
else
    echo "Unable to determine current status."
    CURRENT_OPTION="0"  # Invalid status
fi

# Function to display menu
display_menu() {
    echo "Choose an option:"
    if [ "$CURRENT_OPTION" != "1" ] && [ "$CURRENT_OPTION" != "2" ]; then
        echo "1. Enable Clamshell Mode without Power"
        echo "2. Revert to Default Clamshell Mode"
        echo "3. Exit"
    else
        if [ "$CURRENT_OPTION" != "1" ]; then
            echo "1. Enable Clamshell Mode without Power"
            echo "2. Exit"
        fi
        if [ "$CURRENT_OPTION" != "2" ]; then
            echo "1. Revert to Default Clamshell Mode"
            echo "2. Exit"
        fi
    fi
}

# Prompt the user to choose an action
while true; do
    display_menu
    read -p "Enter select your choice: " choice

    case "$choice" in
        1)
            sudo pmset -a sleep 0
            sudo pmset -a hibernatemode 0
            sudo pmset -a disablesleep 1
            echo "Enabled Clamshell Mode without Power"
            ;;
        2)
            sudo pmset -a sleep 1
            sudo pmset -b hibernatemode 3
            sudo pmset -a disablesleep 0
            echo "Reverted to Default Clamshell Mode"
            ;;
        3)
            echo "Returning to main menu."
            ;;
        *)
            echo "Invalid choice. Please choose correctly"
            ;;
    esac
done
