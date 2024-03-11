#!/bin/bash
trap "" 1 2 3 4 5 6 7 8 9 20

trap "" SIGTSTP
# Get the current hibernatemode variable
HIBERNATE3=" hibernatemode        3"
HIBERNATE0=" hibernatemode        0"
clear

# Function to display menu
display_menu() {
    echo "Choose an option:"
    if [ "$CURRENT_OPTION" != "1" ] && [ "$CURRENT_OPTION" != "2" ]; then
        echo "1. Enable Clamshell Mode without Power"
        echo "2. Revert to Default Clamshell Mode"
        echo "3. Exit"
    else
        if [ "$CURRENT_OPTION" = "1" ]; then
            echo "1. Enable Clamshell Mode without Power"
            echo "2. Exit"
        fi
        if [ "$CURRENT_OPTION" = "2" ]; then
            echo "1. Revert to Default Clamshell Mode"
            echo "2. Exit"
        fi
    fi
}

# Prompt the user to choose an action

menu(){
    OUTPUT="$(pmset -g | grep hibernatemode)"
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
    display_menu
    read -p "Enter your choice: " choice
    if [ "$CURRENT_OPTION" != "1" ] && [ "$CURRENT_OPTION" != "2" ]; then
        case "$choice" in
            1)
                sudo pmset -a sleep 0
                sudo pmset -a hibernatemode 0
                sudo pmset -a disablesleep 1
                echo "Enabled Clamshell Mode without Power"
                sleep 3
                clear
                menu 
                ;;
            2)
                sudo pmset -a sleep 1
                sudo pmset -b hibernatemode 3
                sudo pmset -a disablesleep 0
                echo "Reverted to Default Clamshell Mode"
                sleep 3
                clear
                menu
                ;;
            3)
                echo "Exiting. Have a great day!"
                sleep 3
                clear
                exit 0
                ;;
            *)
                echo "Invalid choice. Please choose correctly."
                sleep 3
                clear
                menu
                ;;
        esac
    elif [ "$CURRENT_OPTION" = "1" ]; then
        case "$choice" in
            1)
                sudo pmset -a sleep 0
                sudo pmset -a hibernatemode 0
                sudo pmset -a disablesleep 1
                echo "Enabled Clamshell Mode without Power"
                sleep 3
                clear
                menu
                ;;
            2)
                echo "Exiting. Have a great day!"
                sleep 3
                clear
                exit 0
                ;;
            *)
                echo "Invalid choice. Please choose correctly."
                sleep 3
                clear
                menu
                ;;
        esac
    elif [ "$CURRENT_OPTION" = "2" ]; then
        case "$choice" in
            1)
                sudo pmset -a sleep 1
                sudo pmset -a hibernatemode 3
                sudo pmset -a disablesleep 0
                echo "Reverted to Default Clamshell Mode"
                sleep 3
                clear
                menu
                ;;
            2)
                echo "Exiting. Have a great day!"
                sleep 3
                clear
                exit 0
                ;;
            *)
                echo "Invalid choice. Please choose correctly."
                sleep 3
                clear
                menu
                ;;
        esac
    else 
        echo "Unsupported System. Exiting.."
        sleep 3
        clear
        exit 0
    fi
}
menu
trap  1 2 3 4 5 6 7 8 9 20
trap  SIGTSTP
